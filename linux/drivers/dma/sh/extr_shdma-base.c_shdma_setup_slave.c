
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shdma_ops {int (* set_slave ) (struct shdma_chan*,int,int ,int) ;} ;
struct shdma_dev {struct shdma_ops* ops; } ;
struct TYPE_3__ {int device; } ;
struct shdma_chan {int hw_req; int real_slave_id; int slave_id; TYPE_2__* dev; TYPE_1__ dma_chan; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ of_node; } ;


 int EBUSY ;
 int EINVAL ;
 int clear_bit (int,int ) ;
 int shdma_slave_used ;
 int slave_num ;
 int stub1 (struct shdma_chan*,int,int ,int) ;
 int stub2 (struct shdma_chan*,int,int ,int) ;
 scalar_t__ test_and_set_bit (int,int ) ;
 struct shdma_dev* to_shdma_dev (int ) ;

__attribute__((used)) static int shdma_setup_slave(struct shdma_chan *schan, dma_addr_t slave_addr)
{
 struct shdma_dev *sdev = to_shdma_dev(schan->dma_chan.device);
 const struct shdma_ops *ops = sdev->ops;
 int ret, match;

 if (schan->dev->of_node) {
  match = schan->hw_req;
  ret = ops->set_slave(schan, match, slave_addr, 1);
  if (ret < 0)
   return ret;
 } else {
  match = schan->real_slave_id;
 }

 if (schan->real_slave_id < 0 || schan->real_slave_id >= slave_num)
  return -EINVAL;

 if (test_and_set_bit(schan->real_slave_id, shdma_slave_used))
  return -EBUSY;

 ret = ops->set_slave(schan, match, slave_addr, 0);
 if (ret < 0) {
  clear_bit(schan->real_slave_id, shdma_slave_used);
  return ret;
 }

 schan->slave_id = schan->real_slave_id;

 return 0;
}
