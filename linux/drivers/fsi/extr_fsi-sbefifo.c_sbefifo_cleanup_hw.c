
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sbefifo {int broken; TYPE_1__* fsi_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int SBEFIFO_DOWN ;
 int SBEFIFO_PERFORM_RESET ;
 int SBEFIFO_STS ;
 int SBEFIFO_STS_EMPTY ;
 int SBEFIFO_STS_PARITY_ERR ;
 int SBEFIFO_STS_RESET_REQ ;
 int SBEFIFO_UP ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,...) ;
 int sbefifo_check_sbe_state (struct sbefifo*) ;
 int sbefifo_regr (struct sbefifo*,int,int*) ;
 int sbefifo_regw (struct sbefifo*,int,int ) ;
 int sbefifo_request_reset (struct sbefifo*) ;

__attribute__((used)) static int sbefifo_cleanup_hw(struct sbefifo *sbefifo)
{
 struct device *dev = &sbefifo->fsi_dev->dev;
 u32 up_status, down_status;
 bool need_reset = 0;
 int rc;

 rc = sbefifo_check_sbe_state(sbefifo);
 if (rc) {
  dev_dbg(dev, "SBE state=%d\n", rc);
  return rc;
 }


 if (sbefifo->broken)
  goto do_reset;

 rc = sbefifo_regr(sbefifo, SBEFIFO_UP | SBEFIFO_STS, &up_status);
 if (rc) {
  dev_err(dev, "Cleanup: Reading UP status failed, rc=%d\n", rc);


  sbefifo->broken = 1;
  return rc;
 }

 rc = sbefifo_regr(sbefifo, SBEFIFO_DOWN | SBEFIFO_STS, &down_status);
 if (rc) {
  dev_err(dev, "Cleanup: Reading DOWN status failed, rc=%d\n", rc);


  sbefifo->broken = 1;
  return rc;
 }


 if (down_status & SBEFIFO_STS_RESET_REQ) {
  dev_info(dev, "Cleanup: FIFO reset request set, resetting\n");
  rc = sbefifo_regw(sbefifo, SBEFIFO_UP, SBEFIFO_PERFORM_RESET);
  if (rc) {
   sbefifo->broken = 1;
   dev_err(dev, "Cleanup: Reset reg write failed, rc=%d\n", rc);
   return rc;
  }
  sbefifo->broken = 0;
  return 0;
 }


 if ((up_status | down_status) & SBEFIFO_STS_PARITY_ERR)
  need_reset = 1;


 if (!((up_status & down_status) & SBEFIFO_STS_EMPTY))
  need_reset = 1;

 if (!need_reset)
  return 0;

 dev_info(dev, "Cleanup: FIFO not clean (up=0x%08x down=0x%08x)\n",
   up_status, down_status);

 do_reset:


 return sbefifo_request_reset(sbefifo);
}
