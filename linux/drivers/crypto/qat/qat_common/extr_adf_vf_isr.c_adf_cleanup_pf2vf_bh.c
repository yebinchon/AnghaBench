
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vf2pf_lock; int pf2vf_bh_tasklet; } ;
struct adf_accel_dev {TYPE_1__ vf; } ;


 int mutex_destroy (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void adf_cleanup_pf2vf_bh(struct adf_accel_dev *accel_dev)
{
 tasklet_disable(&accel_dev->vf.pf2vf_bh_tasklet);
 tasklet_kill(&accel_dev->vf.pf2vf_bh_tasklet);
 mutex_destroy(&accel_dev->vf.vf2pf_lock);
}
