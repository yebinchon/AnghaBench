
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_device {int slave_cfg; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct msgdma_device* to_mdev (struct dma_chan*) ;

__attribute__((used)) static int msgdma_dma_config(struct dma_chan *dchan,
        struct dma_slave_config *config)
{
 struct msgdma_device *mdev = to_mdev(dchan);

 memcpy(&mdev->slave_cfg, config, sizeof(*config));

 return 0;
}
