
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct i40iw_pd {int dummy; } ;
struct i40iw_device {int dummy; } ;


 int i40iw_rem_pdusecount (struct i40iw_pd*,struct i40iw_device*) ;
 struct i40iw_device* to_iwdev (int ) ;
 struct i40iw_pd* to_iwpd (struct ib_pd*) ;

__attribute__((used)) static void i40iw_dealloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct i40iw_pd *iwpd = to_iwpd(ibpd);
 struct i40iw_device *iwdev = to_iwdev(ibpd->device);

 i40iw_rem_pdusecount(iwpd, iwdev);
}
