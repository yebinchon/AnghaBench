
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier {int dummy; } ;
struct radeon_mn {struct mmu_notifier mn; int objects; int lock; } ;
struct mm_struct {int dummy; } ;


 int ENOMEM ;
 struct mmu_notifier* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int RB_ROOT_CACHED ;
 struct radeon_mn* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct mmu_notifier *radeon_mn_alloc_notifier(struct mm_struct *mm)
{
 struct radeon_mn *rmn;

 rmn = kzalloc(sizeof(*rmn), GFP_KERNEL);
 if (!rmn)
  return ERR_PTR(-ENOMEM);

 mutex_init(&rmn->lock);
 rmn->objects = RB_ROOT_CACHED;
 return &rmn->mn;
}
