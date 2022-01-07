
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct shdma_dev {TYPE_3__* ops; TYPE_2__ dma_dev; } ;
struct shdma_chan {int real_slave_id; int slave_id; TYPE_1__* dev; } ;
struct dma_chan {TYPE_4__* device; } ;
struct TYPE_8__ {scalar_t__ device_alloc_chan_resources; } ;
struct TYPE_7__ {int (* set_slave ) (struct shdma_chan*,int,int ,int) ;} ;
struct TYPE_5__ {scalar_t__ of_node; } ;


 int dev_warn (int ,char*) ;
 scalar_t__ shdma_alloc_chan_resources ;
 int slave_num ;
 int stub1 (struct shdma_chan*,int,int ,int) ;
 int stub2 (struct shdma_chan*,int,int ,int) ;
 struct shdma_chan* to_shdma_chan (struct dma_chan*) ;
 struct shdma_dev* to_shdma_dev (TYPE_4__*) ;

bool shdma_chan_filter(struct dma_chan *chan, void *arg)
{
 struct shdma_chan *schan;
 struct shdma_dev *sdev;
 int slave_id = (long)arg;
 int ret;


 if (chan->device->device_alloc_chan_resources !=
     shdma_alloc_chan_resources)
  return 0;

 schan = to_shdma_chan(chan);
 sdev = to_shdma_dev(chan->device);







 if (schan->dev->of_node) {
  ret = sdev->ops->set_slave(schan, slave_id, 0, 1);
  if (ret < 0)
   return 0;

  schan->real_slave_id = schan->slave_id;
  return 1;
 }

 if (slave_id < 0) {

  dev_warn(sdev->dma_dev.dev, "invalid slave ID passed to dma_request_slave\n");
  return 1;
 }

 if (slave_id >= slave_num)
  return 0;

 ret = sdev->ops->set_slave(schan, slave_id, 0, 1);
 if (ret < 0)
  return 0;

 schan->real_slave_id = slave_id;

 return 1;
}
