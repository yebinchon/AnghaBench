
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int dev; } ;
struct ipu_ic_priv {struct ipu_soc* ipu; } ;
struct ipu_ic {struct ipu_ic_priv* priv; } ;


 int IC_CMBP_1 ;
 int IC_CMBP_2 ;
 int IC_CONF ;
 int IC_IDMAC_1 ;
 int IC_IDMAC_2 ;
 int IC_IDMAC_3 ;
 int IC_IDMAC_4 ;
 int IC_PP_RSC ;
 int IC_PRP_ENC_RSC ;
 int IC_PRP_VF_RSC ;
 int dev_dbg (int ,char*,int ) ;
 int ipu_ic_read (struct ipu_ic*,int ) ;

void ipu_ic_dump(struct ipu_ic *ic)
{
 struct ipu_ic_priv *priv = ic->priv;
 struct ipu_soc *ipu = priv->ipu;

 dev_dbg(ipu->dev, "IC_CONF = \t0x%08X\n",
  ipu_ic_read(ic, IC_CONF));
 dev_dbg(ipu->dev, "IC_PRP_ENC_RSC = \t0x%08X\n",
  ipu_ic_read(ic, IC_PRP_ENC_RSC));
 dev_dbg(ipu->dev, "IC_PRP_VF_RSC = \t0x%08X\n",
  ipu_ic_read(ic, IC_PRP_VF_RSC));
 dev_dbg(ipu->dev, "IC_PP_RSC = \t0x%08X\n",
  ipu_ic_read(ic, IC_PP_RSC));
 dev_dbg(ipu->dev, "IC_CMBP_1 = \t0x%08X\n",
  ipu_ic_read(ic, IC_CMBP_1));
 dev_dbg(ipu->dev, "IC_CMBP_2 = \t0x%08X\n",
  ipu_ic_read(ic, IC_CMBP_2));
 dev_dbg(ipu->dev, "IC_IDMAC_1 = \t0x%08X\n",
  ipu_ic_read(ic, IC_IDMAC_1));
 dev_dbg(ipu->dev, "IC_IDMAC_2 = \t0x%08X\n",
  ipu_ic_read(ic, IC_IDMAC_2));
 dev_dbg(ipu->dev, "IC_IDMAC_3 = \t0x%08X\n",
  ipu_ic_read(ic, IC_IDMAC_3));
 dev_dbg(ipu->dev, "IC_IDMAC_4 = \t0x%08X\n",
  ipu_ic_read(ic, IC_IDMAC_4));
}
