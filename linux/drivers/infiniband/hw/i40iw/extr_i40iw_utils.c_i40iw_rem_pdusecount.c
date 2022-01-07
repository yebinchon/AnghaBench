
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pd_id; } ;
struct i40iw_pd {TYPE_1__ sc_pd; int usecount; } ;
struct i40iw_device {int allocated_pds; } ;


 int atomic_dec_and_test (int *) ;
 int i40iw_free_resource (struct i40iw_device*,int ,int ) ;

void i40iw_rem_pdusecount(struct i40iw_pd *iwpd, struct i40iw_device *iwdev)
{
 if (!atomic_dec_and_test(&iwpd->usecount))
  return;
 i40iw_free_resource(iwdev, iwdev->allocated_pds, iwpd->sc_pd.pd_id);
}
