
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_mu_con_priv {int chan; } ;


 int mbox_chan_txdone (int ,int ) ;

__attribute__((used)) static void imx_mu_txdb_tasklet(unsigned long data)
{
 struct imx_mu_con_priv *cp = (struct imx_mu_con_priv *)data;

 mbox_chan_txdone(cp->chan, 0);
}
