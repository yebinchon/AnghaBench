
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_csi {TYPE_1__* ipu; } ;
struct TYPE_2__ {int dev; } ;


 int CSI_ACT_FRM_SIZE ;
 int CSI_CCIR_CODE_1 ;
 int CSI_CCIR_CODE_2 ;
 int CSI_CCIR_CODE_3 ;
 int CSI_MIPI_DI ;
 int CSI_OUT_FRM_CTRL ;
 int CSI_SENS_CONF ;
 int CSI_SENS_FRM_SIZE ;
 int CSI_SKIP ;
 int CSI_TST_CTRL ;
 int dev_dbg (int ,char*,int ) ;
 int ipu_csi_read (struct ipu_csi*,int ) ;

void ipu_csi_dump(struct ipu_csi *csi)
{
 dev_dbg(csi->ipu->dev, "CSI_SENS_CONF:     %08x\n",
  ipu_csi_read(csi, CSI_SENS_CONF));
 dev_dbg(csi->ipu->dev, "CSI_SENS_FRM_SIZE: %08x\n",
  ipu_csi_read(csi, CSI_SENS_FRM_SIZE));
 dev_dbg(csi->ipu->dev, "CSI_ACT_FRM_SIZE:  %08x\n",
  ipu_csi_read(csi, CSI_ACT_FRM_SIZE));
 dev_dbg(csi->ipu->dev, "CSI_OUT_FRM_CTRL:  %08x\n",
  ipu_csi_read(csi, CSI_OUT_FRM_CTRL));
 dev_dbg(csi->ipu->dev, "CSI_TST_CTRL:      %08x\n",
  ipu_csi_read(csi, CSI_TST_CTRL));
 dev_dbg(csi->ipu->dev, "CSI_CCIR_CODE_1:   %08x\n",
  ipu_csi_read(csi, CSI_CCIR_CODE_1));
 dev_dbg(csi->ipu->dev, "CSI_CCIR_CODE_2:   %08x\n",
  ipu_csi_read(csi, CSI_CCIR_CODE_2));
 dev_dbg(csi->ipu->dev, "CSI_CCIR_CODE_3:   %08x\n",
  ipu_csi_read(csi, CSI_CCIR_CODE_3));
 dev_dbg(csi->ipu->dev, "CSI_MIPI_DI:       %08x\n",
  ipu_csi_read(csi, CSI_MIPI_DI));
 dev_dbg(csi->ipu->dev, "CSI_SKIP:          %08x\n",
  ipu_csi_read(csi, CSI_SKIP));
}
