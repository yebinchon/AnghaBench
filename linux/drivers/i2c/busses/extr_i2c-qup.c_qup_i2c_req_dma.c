
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dma; } ;
struct TYPE_3__ {int * dma; } ;
struct qup_i2c_dev {TYPE_2__ brx; int dev; TYPE_1__ btx; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (int ,char*) ;
 void* dma_request_slave_channel_reason (int ,char*) ;
 int qup_i2c_rel_dma (struct qup_i2c_dev*) ;

__attribute__((used)) static int qup_i2c_req_dma(struct qup_i2c_dev *qup)
{
 int err;

 if (!qup->btx.dma) {
  qup->btx.dma = dma_request_slave_channel_reason(qup->dev, "tx");
  if (IS_ERR(qup->btx.dma)) {
   err = PTR_ERR(qup->btx.dma);
   qup->btx.dma = ((void*)0);
   dev_err(qup->dev, "\n tx channel not available");
   return err;
  }
 }

 if (!qup->brx.dma) {
  qup->brx.dma = dma_request_slave_channel_reason(qup->dev, "rx");
  if (IS_ERR(qup->brx.dma)) {
   dev_err(qup->dev, "\n rx channel not available");
   err = PTR_ERR(qup->brx.dma);
   qup->brx.dma = ((void*)0);
   qup_i2c_rel_dma(qup);
   return err;
  }
 }
 return 0;
}
