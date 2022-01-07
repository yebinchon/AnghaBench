
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cyttsp {int xfer_buf; int dev; TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* read ) (int ,int ,int ,int ,void*) ;} ;


 int CY_DELAY_DFLT ;
 int CY_NUM_RETRY ;
 int EIO ;
 int msleep (int ) ;
 int stub1 (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int ttsp_read_block_data(struct cyttsp *ts, u8 command,
    u8 length, void *buf)
{
 int error;
 int tries;

 for (tries = 0; tries < CY_NUM_RETRY; tries++) {
  error = ts->bus_ops->read(ts->dev, ts->xfer_buf, command,
    length, buf);
  if (!error)
   return 0;

  msleep(CY_DELAY_DFLT);
 }

 return -EIO;
}
