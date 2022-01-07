
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_37xx_rwtm_rx_msg {int dummy; } ;
struct mox_rwtm {int cmd_done; struct armada_37xx_rwtm_rx_msg reply; } ;
struct mbox_client {int dev; } ;


 int complete (int *) ;
 struct mox_rwtm* dev_get_drvdata (int ) ;

__attribute__((used)) static void mox_rwtm_rx_callback(struct mbox_client *cl, void *data)
{
 struct mox_rwtm *rwtm = dev_get_drvdata(cl->dev);
 struct armada_37xx_rwtm_rx_msg *msg = data;

 rwtm->reply = *msg;
 complete(&rwtm->cmd_done);
}
