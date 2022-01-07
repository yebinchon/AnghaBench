
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


struct TYPE_18__ {int of_node; TYPE_7__* parent; } ;
struct i2c_adapter {TYPE_16__ dev; int class; int * algo; int name; } ;
struct mbox_client {int knows_txdone; int tx_block; int rx_callback; int tx_tout; TYPE_7__* dev; } ;
struct slimpro_i2c_dev {TYPE_3__* mbox_chan; struct i2c_adapter adapter; void* pcc_comm_addr; int comm_base_addr; int mbox_idx; int rd_complete; struct mbox_client mbox_client; TYPE_7__* dev; } ;
struct TYPE_22__ {int of_node; TYPE_1__* driver; } ;
struct platform_device {TYPE_7__ dev; } ;
struct acpi_pcct_hw_reduced {int length; int base_address; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_21__ {TYPE_2__* mbox; struct acpi_pcct_hw_reduced* con_priv; } ;
struct TYPE_20__ {int txdone_irq; } ;
struct TYPE_19__ {int acpi_match_table; } ;


 int ACPI_COMPANION (TYPE_7__*) ;
 int ACPI_COMPANION_SET (TYPE_16__*,int ) ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int MAILBOX_I2C_INDEX ;
 int MAILBOX_OP_TIMEOUT ;
 int MEMREMAP_WB ;
 int MEMREMAP_WT ;
 int PTR_ERR (TYPE_3__*) ;
 int XGENE_SLIMPRO_I2C_V1 ;
 int XGENE_SLIMPRO_I2C_V2 ;
 scalar_t__ acpi_disabled ;
 struct acpi_device_id* acpi_match_device (int ,TYPE_7__*) ;
 int dev_err (TYPE_7__*,char*) ;
 int dev_info (TYPE_7__*,char*) ;
 int dev_warn (TYPE_7__*,char*) ;
 scalar_t__ device_property_read_u32 (TYPE_7__*,char*,int *) ;
 struct slimpro_i2c_dev* devm_kzalloc (TYPE_7__*,int,int ) ;
 int dma_set_mask_and_coherent (TYPE_7__*,int ) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct slimpro_i2c_dev*) ;
 int init_completion (int *) ;
 int mbox_free_channel (TYPE_3__*) ;
 TYPE_3__* mbox_request_channel (struct mbox_client*,int ) ;
 void* memremap (int ,int ,int ) ;
 int pcc_mbox_free_channel (TYPE_3__*) ;
 TYPE_3__* pcc_mbox_request_channel (struct mbox_client*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct slimpro_i2c_dev*) ;
 int slimpro_i2c_pcc_rx_cb ;
 int slimpro_i2c_rx_cb ;
 int snprintf (int ,int,char*) ;
 int xgene_slimpro_i2c_algorithm ;

__attribute__((used)) static int xgene_slimpro_i2c_probe(struct platform_device *pdev)
{
 struct slimpro_i2c_dev *ctx;
 struct i2c_adapter *adapter;
 struct mbox_client *cl;
 int rc;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = &pdev->dev;
 platform_set_drvdata(pdev, ctx);
 cl = &ctx->mbox_client;


 cl->dev = &pdev->dev;
 init_completion(&ctx->rd_complete);
 cl->tx_tout = MAILBOX_OP_TIMEOUT;
 cl->knows_txdone = 0;
 if (acpi_disabled) {
  cl->tx_block = 1;
  cl->rx_callback = slimpro_i2c_rx_cb;
  ctx->mbox_chan = mbox_request_channel(cl, MAILBOX_I2C_INDEX);
  if (IS_ERR(ctx->mbox_chan)) {
   dev_err(&pdev->dev, "i2c mailbox channel request failed\n");
   return PTR_ERR(ctx->mbox_chan);
  }
 } else {
  struct acpi_pcct_hw_reduced *cppc_ss;
  const struct acpi_device_id *acpi_id;
  int version = XGENE_SLIMPRO_I2C_V1;

  acpi_id = acpi_match_device(pdev->dev.driver->acpi_match_table,
         &pdev->dev);
  if (!acpi_id)
   return -EINVAL;

  version = (int)acpi_id->driver_data;

  if (device_property_read_u32(&pdev->dev, "pcc-channel",
          &ctx->mbox_idx))
   ctx->mbox_idx = MAILBOX_I2C_INDEX;

  cl->tx_block = 0;
  cl->rx_callback = slimpro_i2c_pcc_rx_cb;
  ctx->mbox_chan = pcc_mbox_request_channel(cl, ctx->mbox_idx);
  if (IS_ERR(ctx->mbox_chan)) {
   dev_err(&pdev->dev, "PCC mailbox channel request failed\n");
   return PTR_ERR(ctx->mbox_chan);
  }







  cppc_ss = ctx->mbox_chan->con_priv;
  if (!cppc_ss) {
   dev_err(&pdev->dev, "PPC subspace not found\n");
   rc = -ENOENT;
   goto mbox_err;
  }

  if (!ctx->mbox_chan->mbox->txdone_irq) {
   dev_err(&pdev->dev, "PCC IRQ not supported\n");
   rc = -ENOENT;
   goto mbox_err;
  }





  ctx->comm_base_addr = cppc_ss->base_address;
  if (ctx->comm_base_addr) {
   if (version == XGENE_SLIMPRO_I2C_V2)
    ctx->pcc_comm_addr = memremap(
       ctx->comm_base_addr,
       cppc_ss->length,
       MEMREMAP_WT);
   else
    ctx->pcc_comm_addr = memremap(
       ctx->comm_base_addr,
       cppc_ss->length,
       MEMREMAP_WB);
  } else {
   dev_err(&pdev->dev, "Failed to get PCC comm region\n");
   rc = -ENOENT;
   goto mbox_err;
  }

  if (!ctx->pcc_comm_addr) {
   dev_err(&pdev->dev,
    "Failed to ioremap PCC comm region\n");
   rc = -ENOMEM;
   goto mbox_err;
  }
 }
 rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (rc)
  dev_warn(&pdev->dev, "Unable to set dma mask\n");


 adapter = &ctx->adapter;
 snprintf(adapter->name, sizeof(adapter->name), "MAILBOX I2C");
 adapter->algo = &xgene_slimpro_i2c_algorithm;
 adapter->class = I2C_CLASS_HWMON;
 adapter->dev.parent = &pdev->dev;
 adapter->dev.of_node = pdev->dev.of_node;
 ACPI_COMPANION_SET(&adapter->dev, ACPI_COMPANION(&pdev->dev));
 i2c_set_adapdata(adapter, ctx);
 rc = i2c_add_adapter(adapter);
 if (rc)
  goto mbox_err;

 dev_info(&pdev->dev, "Mailbox I2C Adapter registered\n");
 return 0;

mbox_err:
 if (acpi_disabled)
  mbox_free_channel(ctx->mbox_chan);
 else
  pcc_mbox_free_channel(ctx->mbox_chan);

 return rc;
}
