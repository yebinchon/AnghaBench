
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synps_edac_priv {scalar_t__ baseaddr; } ;


 int DDR_QOSCE_MASK ;
 int DDR_QOSUE_MASK ;
 scalar_t__ DDR_QOS_IRQ_EN_OFST ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void enable_intr(struct synps_edac_priv *priv)
{

 writel(DDR_QOSUE_MASK | DDR_QOSCE_MASK,
   priv->baseaddr + DDR_QOS_IRQ_EN_OFST);
}
