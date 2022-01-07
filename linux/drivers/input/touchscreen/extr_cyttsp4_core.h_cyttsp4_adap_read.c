
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct cyttsp4 {int xfer_buf; int dev; TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* read ) (int ,int ,int ,int,void*) ;} ;


 int stub1 (int ,int ,int ,int,void*) ;

__attribute__((used)) static inline int cyttsp4_adap_read(struct cyttsp4 *ts, u16 addr, int size,
  void *buf)
{
 return ts->bus_ops->read(ts->dev, ts->xfer_buf, addr, size, buf);
}
