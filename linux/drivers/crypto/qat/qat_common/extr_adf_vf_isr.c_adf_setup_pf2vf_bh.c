
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vf2pf_lock; int pf2vf_bh_tasklet; } ;
struct adf_accel_dev {TYPE_1__ vf; } ;


 scalar_t__ adf_pf2vf_bh_handler ;
 int mutex_init (int *) ;
 int tasklet_init (int *,void*,unsigned long) ;

__attribute__((used)) static int adf_setup_pf2vf_bh(struct adf_accel_dev *accel_dev)
{
 tasklet_init(&accel_dev->vf.pf2vf_bh_tasklet,
       (void *)adf_pf2vf_bh_handler, (unsigned long)accel_dev);

 mutex_init(&accel_dev->vf.vf2pf_lock);
 return 0;
}
