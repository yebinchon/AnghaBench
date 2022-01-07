
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxio_hal_resource {int cqid_fifo_lock; int cqid_fifo; } ;


 int cxio_hal_get_resource (int *,int *) ;

u32 cxio_hal_get_cqid(struct cxio_hal_resource *rscp)
{
 return cxio_hal_get_resource(&rscp->cqid_fifo, &rscp->cqid_fifo_lock);
}
