
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int gtt_sa_bitmap; int gtt_sa_lock; } ;


 int kfree (int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void kfd_gtt_sa_fini(struct kfd_dev *kfd)
{
 mutex_destroy(&kfd->gtt_sa_lock);
 kfree(kfd->gtt_sa_bitmap);
}
