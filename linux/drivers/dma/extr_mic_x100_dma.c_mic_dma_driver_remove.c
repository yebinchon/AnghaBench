
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_device {int dbg_dir; } ;
struct mbus_device {int dev; } ;


 int debugfs_remove_recursive (int ) ;
 struct mic_dma_device* dev_get_drvdata (int *) ;
 int mic_dma_dev_unreg (struct mic_dma_device*) ;

__attribute__((used)) static void mic_dma_driver_remove(struct mbus_device *mbdev)
{
 struct mic_dma_device *mic_dma_dev;

 mic_dma_dev = dev_get_drvdata(&mbdev->dev);
 debugfs_remove_recursive(mic_dma_dev->dbg_dir);
 mic_dma_dev_unreg(mic_dma_dev);
}
