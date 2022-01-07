
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cyttsp4 {int xfer_buf; int dev; TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* write ) (int ,int ,int ,int,void const*) ;} ;


 int stub1 (int ,int ,int ,int,void const*) ;

__attribute__((used)) static inline int cyttsp4_adap_write(struct cyttsp4 *ts, u16 addr, int size,
  const void *buf)
{
 return ts->bus_ops->write(ts->dev, ts->xfer_buf, addr, size, buf);
}
