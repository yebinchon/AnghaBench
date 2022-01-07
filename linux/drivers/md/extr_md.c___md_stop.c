
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int recovery; int * to_remove; int * private; int lock; struct md_personality* pers; } ;
struct md_personality {int owner; scalar_t__ sync_request; int (* free ) (struct mddev*,int *) ;} ;


 int MD_RECOVERY_FROZEN ;
 int clear_bit (int ,int *) ;
 int flush_workqueue (int ) ;
 int md_bitmap_destroy (struct mddev*) ;
 int md_misc_wq ;
 int md_redundancy_group ;
 int mddev_detach (struct mddev*) ;
 int module_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mddev*,int *) ;

__attribute__((used)) static void __md_stop(struct mddev *mddev)
{
 struct md_personality *pers = mddev->pers;
 md_bitmap_destroy(mddev);
 mddev_detach(mddev);

 flush_workqueue(md_misc_wq);
 spin_lock(&mddev->lock);
 mddev->pers = ((void*)0);
 spin_unlock(&mddev->lock);
 pers->free(mddev, mddev->private);
 mddev->private = ((void*)0);
 if (pers->sync_request && mddev->to_remove == ((void*)0))
  mddev->to_remove = &md_redundancy_group;
 module_put(pers->owner);
 clear_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
}
