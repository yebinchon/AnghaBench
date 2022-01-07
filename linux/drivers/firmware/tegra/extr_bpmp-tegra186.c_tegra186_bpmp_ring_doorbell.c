
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bpmp {struct tegra186_bpmp* priv; } ;
struct TYPE_2__ {int channel; } ;
struct tegra186_bpmp {TYPE_1__ mbox; } ;


 int mbox_client_txdone (int ,int ) ;
 int mbox_send_message (int ,int *) ;

__attribute__((used)) static int tegra186_bpmp_ring_doorbell(struct tegra_bpmp *bpmp)
{
 struct tegra186_bpmp *priv = bpmp->priv;
 int err;

 err = mbox_send_message(priv->mbox.channel, ((void*)0));
 if (err < 0)
  return err;

 mbox_client_txdone(priv->mbox.channel, 0);

 return 0;
}
