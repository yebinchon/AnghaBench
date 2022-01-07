
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ipu_vdi {int lock; } ;


 scalar_t__ MEDIA_BUS_FMT_UYVY8_1X16 ;
 scalar_t__ MEDIA_BUS_FMT_UYVY8_2X8 ;
 scalar_t__ MEDIA_BUS_FMT_YUYV8_1X16 ;
 scalar_t__ MEDIA_BUS_FMT_YUYV8_2X8 ;
 int VDI_C ;
 scalar_t__ VDI_C_BURST_SIZE1_4 ;
 scalar_t__ VDI_C_BURST_SIZE2_4 ;
 scalar_t__ VDI_C_BURST_SIZE3_4 ;
 scalar_t__ VDI_C_CH_420 ;
 scalar_t__ VDI_C_CH_422 ;
 scalar_t__ VDI_C_VWM1_CLR_2 ;
 scalar_t__ VDI_C_VWM3_CLR_2 ;
 int VDI_FSIZE ;
 scalar_t__ ipu_vdi_read (struct ipu_vdi*,int ) ;
 int ipu_vdi_write (struct ipu_vdi*,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_vdi_setup(struct ipu_vdi *vdi, u32 code, int xres, int yres)
{
 unsigned long flags;
 u32 pixel_fmt, reg;

 spin_lock_irqsave(&vdi->lock, flags);

 reg = ((yres - 1) << 16) | (xres - 1);
 ipu_vdi_write(vdi, reg, VDI_FSIZE);





 if (code == MEDIA_BUS_FMT_UYVY8_2X8 ||
     code == MEDIA_BUS_FMT_UYVY8_1X16 ||
     code == MEDIA_BUS_FMT_YUYV8_2X8 ||
     code == MEDIA_BUS_FMT_YUYV8_1X16)
  pixel_fmt = VDI_C_CH_422;
 else
  pixel_fmt = VDI_C_CH_420;

 reg = ipu_vdi_read(vdi, VDI_C);
 reg |= pixel_fmt;
 reg |= VDI_C_BURST_SIZE2_4;
 reg |= VDI_C_BURST_SIZE1_4 | VDI_C_VWM1_CLR_2;
 reg |= VDI_C_BURST_SIZE3_4 | VDI_C_VWM3_CLR_2;
 ipu_vdi_write(vdi, reg, VDI_C);

 spin_unlock_irqrestore(&vdi->lock, flags);
}
