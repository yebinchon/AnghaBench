
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rmi_device {TYPE_2__* xport; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* write_block ) (TYPE_2__*,int ,void const*,size_t) ;} ;


 int stub1 (TYPE_2__*,int ,void const*,size_t) ;

__attribute__((used)) static inline int rmi_write_block(struct rmi_device *d, u16 addr,
      const void *buf, size_t len)
{
 return d->xport->ops->write_block(d->xport, addr, buf, len);
}
