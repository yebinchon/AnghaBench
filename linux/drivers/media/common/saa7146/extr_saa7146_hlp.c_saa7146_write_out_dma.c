
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_video_dma {int base_odd; int base_even; int prot_addr; int pitch; int base_page; int num_line_byte; } ;
struct saa7146_dev {int dummy; } ;


 int MASK_02 ;
 int MASK_18 ;
 int MC2 ;
 int saa7146_write (struct saa7146_dev*,int,int) ;

void saa7146_write_out_dma(struct saa7146_dev* dev, int which, struct saa7146_video_dma* vdma)
{
 int where = 0;

 if( which < 1 || which > 3) {
  return;
 }


 where = (which-1)*0x18;

 saa7146_write(dev, where, vdma->base_odd);
 saa7146_write(dev, where+0x04, vdma->base_even);
 saa7146_write(dev, where+0x08, vdma->prot_addr);
 saa7146_write(dev, where+0x0c, vdma->pitch);
 saa7146_write(dev, where+0x10, vdma->base_page);
 saa7146_write(dev, where+0x14, vdma->num_line_byte);


 saa7146_write(dev, MC2, (MASK_02<<(which-1))|(MASK_18<<(which-1)));
}
