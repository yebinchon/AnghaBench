
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;
struct efa_pd {int pdn; } ;
struct efa_dev {int ibdev; } ;


 int efa_pd_dealloc (struct efa_dev*,int ) ;
 int ibdev_dbg (int *,char*,int ) ;
 struct efa_dev* to_edev (int ) ;
 struct efa_pd* to_epd (struct ib_pd*) ;

void efa_dealloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct efa_dev *dev = to_edev(ibpd->device);
 struct efa_pd *pd = to_epd(ibpd);

 ibdev_dbg(&dev->ibdev, "Dealloc pd[%d]\n", pd->pdn);
 efa_pd_dealloc(dev, pd->pdn);
}
