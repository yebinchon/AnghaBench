
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int dev; } ;


 int IDMAC_BAND_EN (int) ;
 int IDMAC_CHA_EN (int) ;
 int IDMAC_CHA_PRI (int) ;
 int IDMAC_CONF ;
 int IPU_CHA_DB_MODE_SEL (int) ;
 int IPU_CONF ;
 int IPU_FS_DISP_FLOW1 ;
 int IPU_FS_PROC_FLOW1 ;
 int IPU_FS_PROC_FLOW2 ;
 int IPU_FS_PROC_FLOW3 ;
 int IPU_INT_CTRL (int) ;
 int dev_dbg (int ,char*,int,...) ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;

void ipu_dump(struct ipu_soc *ipu)
{
 int i;

 dev_dbg(ipu->dev, "IPU_CONF = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_CONF));
 dev_dbg(ipu->dev, "IDMAC_CONF = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_CONF));
 dev_dbg(ipu->dev, "IDMAC_CHA_EN1 = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_CHA_EN(0)));
 dev_dbg(ipu->dev, "IDMAC_CHA_EN2 = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_CHA_EN(32)));
 dev_dbg(ipu->dev, "IDMAC_CHA_PRI1 = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_CHA_PRI(0)));
 dev_dbg(ipu->dev, "IDMAC_CHA_PRI2 = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_CHA_PRI(32)));
 dev_dbg(ipu->dev, "IDMAC_BAND_EN1 = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_BAND_EN(0)));
 dev_dbg(ipu->dev, "IDMAC_BAND_EN2 = \t0x%08X\n",
  ipu_idmac_read(ipu, IDMAC_BAND_EN(32)));
 dev_dbg(ipu->dev, "IPU_CHA_DB_MODE_SEL0 = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_CHA_DB_MODE_SEL(0)));
 dev_dbg(ipu->dev, "IPU_CHA_DB_MODE_SEL1 = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_CHA_DB_MODE_SEL(32)));
 dev_dbg(ipu->dev, "IPU_FS_PROC_FLOW1 = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_FS_PROC_FLOW1));
 dev_dbg(ipu->dev, "IPU_FS_PROC_FLOW2 = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_FS_PROC_FLOW2));
 dev_dbg(ipu->dev, "IPU_FS_PROC_FLOW3 = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_FS_PROC_FLOW3));
 dev_dbg(ipu->dev, "IPU_FS_DISP_FLOW1 = \t0x%08X\n",
  ipu_cm_read(ipu, IPU_FS_DISP_FLOW1));
 for (i = 0; i < 15; i++)
  dev_dbg(ipu->dev, "IPU_INT_CTRL(%d) = \t%08X\n", i,
   ipu_cm_read(ipu, IPU_INT_CTRL(i)));
}
