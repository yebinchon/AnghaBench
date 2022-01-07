
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chip {struct dw_dma* dw; int dev; } ;
struct dw_dma {int enable; int disable; int set_device_name; int block2bytes; int bytes2block; int encode_maxburst; int prepare_ctllo; int resume_chan; int suspend_chan; int initialize_chan; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dw_dma* devm_kzalloc (int ,int,int ) ;
 int do_dma_probe (struct dw_dma_chip*) ;
 int idma32_block2bytes ;
 int idma32_bytes2block ;
 int idma32_disable ;
 int idma32_enable ;
 int idma32_encode_maxburst ;
 int idma32_initialize_chan ;
 int idma32_prepare_ctllo ;
 int idma32_resume_chan ;
 int idma32_set_device_name ;
 int idma32_suspend_chan ;

int idma32_dma_probe(struct dw_dma_chip *chip)
{
 struct dw_dma *dw;

 dw = devm_kzalloc(chip->dev, sizeof(*dw), GFP_KERNEL);
 if (!dw)
  return -ENOMEM;


 dw->initialize_chan = idma32_initialize_chan;
 dw->suspend_chan = idma32_suspend_chan;
 dw->resume_chan = idma32_resume_chan;
 dw->prepare_ctllo = idma32_prepare_ctllo;
 dw->encode_maxburst = idma32_encode_maxburst;
 dw->bytes2block = idma32_bytes2block;
 dw->block2bytes = idma32_block2bytes;


 dw->set_device_name = idma32_set_device_name;
 dw->disable = idma32_disable;
 dw->enable = idma32_enable;

 chip->dw = dw;
 return do_dma_probe(chip);
}
