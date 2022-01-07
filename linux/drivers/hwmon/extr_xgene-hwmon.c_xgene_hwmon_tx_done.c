
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mbox_client {int dev; } ;


 int dev_dbg (int ,char*,int ,int) ;

__attribute__((used)) static void xgene_hwmon_tx_done(struct mbox_client *cl, void *msg, int ret)
{
 if (ret) {
  dev_dbg(cl->dev, "TX did not complete: CMD sent:%x, ret:%d\n",
   *(u16 *)msg, ret);
 } else {
  dev_dbg(cl->dev, "TX completed. CMD sent:%x, ret:%d\n",
   *(u16 *)msg, ret);
 }
}
