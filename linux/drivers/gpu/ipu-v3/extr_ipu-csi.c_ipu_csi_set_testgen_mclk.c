
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_csi {TYPE_1__* ipu; } ;
struct TYPE_2__ {int dev; } ;


 int CSI_SENS_CONF ;
 int CSI_SENS_CONF_DIVRATIO_MASK ;
 int CSI_SENS_CONF_DIVRATIO_SHIFT ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int ipu_csi_read (struct ipu_csi*,int ) ;
 int ipu_csi_write (struct ipu_csi*,int,int ) ;

__attribute__((used)) static int ipu_csi_set_testgen_mclk(struct ipu_csi *csi, u32 pixel_clk,
     u32 ipu_clk)
{
 u32 temp;
 int div_ratio;

 div_ratio = (ipu_clk / pixel_clk) - 1;

 if (div_ratio > 0xFF || div_ratio < 0) {
  dev_err(csi->ipu->dev,
   "value of pixel_clk extends normal range\n");
  return -EINVAL;
 }

 temp = ipu_csi_read(csi, CSI_SENS_CONF);
 temp &= ~CSI_SENS_CONF_DIVRATIO_MASK;
 ipu_csi_write(csi, temp | (div_ratio << CSI_SENS_CONF_DIVRATIO_SHIFT),
     CSI_SENS_CONF);

 return 0;
}
