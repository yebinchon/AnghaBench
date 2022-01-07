
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_dma_device {int dbg_dir; } ;
struct TYPE_2__ {scalar_t__ device; } ;
struct mbus_device {int dev; TYPE_1__ id; } ;
typedef enum mic_dma_chan_owner { ____Placeholder_mic_dma_chan_owner } mic_dma_chan_owner ;


 scalar_t__ MBUS_DEV_DMA_MIC ;
 int MIC_DMA_CHAN_HOST ;
 int MIC_DMA_CHAN_MIC ;
 int debugfs_create_dir (int ,scalar_t__) ;
 int debugfs_create_file (char*,int,int ,struct mic_dma_device*,int *) ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,struct mic_dma_device*) ;
 scalar_t__ mic_dma_dbg ;
 struct mic_dma_device* mic_dma_dev_reg (struct mbus_device*,int) ;
 int mic_dma_reg_fops ;

__attribute__((used)) static int mic_dma_driver_probe(struct mbus_device *mbdev)
{
 struct mic_dma_device *mic_dma_dev;
 enum mic_dma_chan_owner owner;

 if (MBUS_DEV_DMA_MIC == mbdev->id.device)
  owner = MIC_DMA_CHAN_MIC;
 else
  owner = MIC_DMA_CHAN_HOST;

 mic_dma_dev = mic_dma_dev_reg(mbdev, owner);
 dev_set_drvdata(&mbdev->dev, mic_dma_dev);

 if (mic_dma_dbg) {
  mic_dma_dev->dbg_dir = debugfs_create_dir(dev_name(&mbdev->dev),
         mic_dma_dbg);
  debugfs_create_file("mic_dma_reg", 0444, mic_dma_dev->dbg_dir,
        mic_dma_dev, &mic_dma_reg_fops);
 }
 return 0;
}
