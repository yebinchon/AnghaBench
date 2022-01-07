
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct radeon_sa_manager {unsigned int align; unsigned int size; TYPE_1__ wq; } ;
struct radeon_sa_bo {int flist; int olist; int * fence; struct radeon_sa_manager* manager; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RADEON_NUM_RINGS ;
 int kfree (struct radeon_sa_bo*) ;
 struct radeon_sa_bo* kmalloc (int,int ) ;
 int radeon_fence_ref (struct radeon_fence*) ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait_any (struct radeon_device*,struct radeon_fence**,int) ;
 scalar_t__ radeon_sa_bo_next_hole (struct radeon_sa_manager*,struct radeon_fence**,unsigned int*) ;
 scalar_t__ radeon_sa_bo_try_alloc (struct radeon_sa_manager*,struct radeon_sa_bo*,unsigned int,unsigned int) ;
 int radeon_sa_bo_try_free (struct radeon_sa_manager*) ;
 int radeon_sa_event (struct radeon_sa_manager*,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible_locked (TYPE_1__,int ) ;

int radeon_sa_bo_new(struct radeon_device *rdev,
       struct radeon_sa_manager *sa_manager,
       struct radeon_sa_bo **sa_bo,
       unsigned size, unsigned align)
{
 struct radeon_fence *fences[RADEON_NUM_RINGS];
 unsigned tries[RADEON_NUM_RINGS];
 int i, r;

 BUG_ON(align > sa_manager->align);
 BUG_ON(size > sa_manager->size);

 *sa_bo = kmalloc(sizeof(struct radeon_sa_bo), GFP_KERNEL);
 if ((*sa_bo) == ((void*)0)) {
  return -ENOMEM;
 }
 (*sa_bo)->manager = sa_manager;
 (*sa_bo)->fence = ((void*)0);
 INIT_LIST_HEAD(&(*sa_bo)->olist);
 INIT_LIST_HEAD(&(*sa_bo)->flist);

 spin_lock(&sa_manager->wq.lock);
 do {
  for (i = 0; i < RADEON_NUM_RINGS; ++i) {
   fences[i] = ((void*)0);
   tries[i] = 0;
  }

  do {
   radeon_sa_bo_try_free(sa_manager);

   if (radeon_sa_bo_try_alloc(sa_manager, *sa_bo,
         size, align)) {
    spin_unlock(&sa_manager->wq.lock);
    return 0;
   }


  } while (radeon_sa_bo_next_hole(sa_manager, fences, tries));

  for (i = 0; i < RADEON_NUM_RINGS; ++i)
   radeon_fence_ref(fences[i]);

  spin_unlock(&sa_manager->wq.lock);
  r = radeon_fence_wait_any(rdev, fences, 0);
  for (i = 0; i < RADEON_NUM_RINGS; ++i)
   radeon_fence_unref(&fences[i]);
  spin_lock(&sa_manager->wq.lock);

  if (r == -ENOENT) {
   r = wait_event_interruptible_locked(
    sa_manager->wq,
    radeon_sa_event(sa_manager, size, align)
   );
  }

 } while (!r);

 spin_unlock(&sa_manager->wq.lock);
 kfree(*sa_bo);
 *sa_bo = ((void*)0);
 return r;
}
