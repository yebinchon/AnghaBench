
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxio_hal_resource {int pdid_fifo_lock; int pdid_fifo; } ;


 int cxio_hal_put_resource (int *,int *,int ) ;

void cxio_hal_put_pdid(struct cxio_hal_resource *rscp, u32 pdid)
{
 cxio_hal_put_resource(&rscp->pdid_fifo, &rscp->pdid_fifo_lock, pdid);
}
