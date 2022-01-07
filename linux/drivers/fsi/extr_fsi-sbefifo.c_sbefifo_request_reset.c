
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sbefifo {int broken; TYPE_1__* fsi_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ETIMEDOUT ;
 int SBEFIFO_REQ_RESET ;
 scalar_t__ SBEFIFO_RESET_TIMEOUT ;
 int SBEFIFO_STS ;
 scalar_t__ SBEFIFO_STS_RESET_REQ ;
 int SBEFIFO_UP ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int msleep (int) ;
 int sbefifo_regr (struct sbefifo*,int,scalar_t__*) ;
 int sbefifo_regw (struct sbefifo*,int,int) ;

__attribute__((used)) static int sbefifo_request_reset(struct sbefifo *sbefifo)
{
 struct device *dev = &sbefifo->fsi_dev->dev;
 u32 status, timeout;
 int rc;

 dev_dbg(dev, "Requesting FIFO reset\n");


 sbefifo->broken = 1;


 rc = sbefifo_regw(sbefifo, SBEFIFO_UP | SBEFIFO_REQ_RESET, 1);
 if (rc) {
  dev_err(dev, "Sending reset request failed, rc=%d\n", rc);
  return rc;
 }


 for (timeout = 0; timeout < SBEFIFO_RESET_TIMEOUT; timeout++) {
  rc = sbefifo_regr(sbefifo, SBEFIFO_UP | SBEFIFO_STS, &status);
  if (rc) {
   dev_err(dev, "Failed to read UP fifo status during reset"
    " , rc=%d\n", rc);
   return rc;
  }

  if (!(status & SBEFIFO_STS_RESET_REQ)) {
   dev_dbg(dev, "FIFO reset done\n");
   sbefifo->broken = 0;
   return 0;
  }

  msleep(1);
 }
 dev_err(dev, "FIFO reset timed out\n");

 return -ETIMEDOUT;
}
