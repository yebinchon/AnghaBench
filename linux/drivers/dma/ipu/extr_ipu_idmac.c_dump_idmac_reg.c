
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu {int dev; } ;


 int IC_CONF ;
 int IDMAC_CHA_BUSY ;
 int IDMAC_CHA_EN ;
 int IDMAC_CHA_PRI ;
 int IDMAC_CONF ;
 int IPU_CHA_BUF0_RDY ;
 int IPU_CHA_BUF1_RDY ;
 int IPU_CHA_CUR_BUF ;
 int IPU_CHA_DB_MODE_SEL ;
 int IPU_TASKS_STAT ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int idmac_read_icreg (struct ipu*,int ) ;
 int idmac_read_ipureg (struct ipu*,int ) ;

__attribute__((used)) static void dump_idmac_reg(struct ipu *ipu)
{
 dev_dbg(ipu->dev, "IDMAC_CONF 0x%x, IC_CONF 0x%x, IDMAC_CHA_EN 0x%x, "
  "IDMAC_CHA_PRI 0x%x, IDMAC_CHA_BUSY 0x%x\n",
  idmac_read_icreg(ipu, IDMAC_CONF),
  idmac_read_icreg(ipu, IC_CONF),
  idmac_read_icreg(ipu, IDMAC_CHA_EN),
  idmac_read_icreg(ipu, IDMAC_CHA_PRI),
  idmac_read_icreg(ipu, IDMAC_CHA_BUSY));
 dev_dbg(ipu->dev, "BUF0_RDY 0x%x, BUF1_RDY 0x%x, CUR_BUF 0x%x, "
  "DB_MODE 0x%x, TASKS_STAT 0x%x\n",
  idmac_read_ipureg(ipu, IPU_CHA_BUF0_RDY),
  idmac_read_ipureg(ipu, IPU_CHA_BUF1_RDY),
  idmac_read_ipureg(ipu, IPU_CHA_CUR_BUF),
  idmac_read_ipureg(ipu, IPU_CHA_DB_MODE_SEL),
  idmac_read_ipureg(ipu, IPU_TASKS_STAT));
}
