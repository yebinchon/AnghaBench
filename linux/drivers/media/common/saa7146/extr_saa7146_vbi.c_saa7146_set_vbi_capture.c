
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7146_vv {scalar_t__ current_hps_sync; } ;
struct saa7146_video_dma {int pitch; int base_page; int num_line_byte; scalar_t__ prot_addr; scalar_t__ base_odd; scalar_t__ base_even; } ;
struct TYPE_4__ {int dma_handle; } ;
struct saa7146_dev {TYPE_2__ d_rps1; struct saa7146_vv* vv_data; } ;
struct saa7146_buf {TYPE_1__* pt; } ;
struct TYPE_3__ {int dma; scalar_t__ offset; } ;


 unsigned long CMD_E_FID_A ;
 unsigned long CMD_E_FID_B ;
 unsigned long CMD_INTERRUPT ;
 unsigned long CMD_O_FID_A ;
 unsigned long CMD_O_FID_B ;
 unsigned long CMD_PAUSE ;
 unsigned long CMD_STOP ;
 int CMD_WR_REG ;
 int CMD_WR_REG_MASK ;
 unsigned long MASK_04 ;
 unsigned long MASK_12 ;
 int MASK_13 ;
 unsigned long MASK_20 ;
 unsigned long MASK_28 ;
 int MASK_29 ;
 int MC1 ;
 int MC2 ;
 int ME1 ;
 int RPS_ADDR1 ;
 scalar_t__ SAA7146_HPS_SYNC_PORT_A ;
 int SAA7146_IER_ENABLE (struct saa7146_dev*,unsigned long) ;
 int WRITE_RPS1 (unsigned long) ;
 int saa7146_write (struct saa7146_dev*,int,int) ;
 int saa7146_write_out_dma (struct saa7146_dev*,int,struct saa7146_video_dma*) ;
 int vbi_pixel_to_capture ;

__attribute__((used)) static void saa7146_set_vbi_capture(struct saa7146_dev *dev, struct saa7146_buf *buf, struct saa7146_buf *next)
{
 struct saa7146_vv *vv = dev->vv_data;

 struct saa7146_video_dma vdma3;

 int count = 0;
 unsigned long e_wait = vv->current_hps_sync == SAA7146_HPS_SYNC_PORT_A ? CMD_E_FID_A : CMD_E_FID_B;
 unsigned long o_wait = vv->current_hps_sync == SAA7146_HPS_SYNC_PORT_A ? CMD_O_FID_A : CMD_O_FID_B;
 vdma3.base_even = buf->pt[2].offset;
 vdma3.base_odd = buf->pt[2].offset + 16 * vbi_pixel_to_capture;
 vdma3.prot_addr = buf->pt[2].offset + 16 * 2 * vbi_pixel_to_capture;
 vdma3.pitch = vbi_pixel_to_capture;
 vdma3.base_page = buf->pt[2].dma | ME1;
 vdma3.num_line_byte = (16 << 16) | vbi_pixel_to_capture;

 saa7146_write_out_dma(dev, 3, &vdma3);


 count = 0;
 WRITE_RPS1(CMD_WR_REG | (1 << 8) | (MC2/4));
 WRITE_RPS1(MASK_28 | MASK_12);


 WRITE_RPS1(CMD_WR_REG_MASK | (MC1/4));
 WRITE_RPS1(MASK_04 | MASK_20);
 WRITE_RPS1(MASK_04 | MASK_20);


 WRITE_RPS1(CMD_PAUSE | o_wait);
 WRITE_RPS1(CMD_PAUSE | e_wait);


 WRITE_RPS1(CMD_INTERRUPT);


 WRITE_RPS1(CMD_STOP);


 SAA7146_IER_ENABLE(dev, MASK_28);


 saa7146_write(dev, RPS_ADDR1, dev->d_rps1.dma_handle);


 saa7146_write(dev, MC1, (MASK_13 | MASK_29));
}
