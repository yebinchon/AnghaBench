
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hsp_doorbell {int channel; } ;
struct mbox_chan {struct tegra_hsp_doorbell* con_priv; } ;


 int HSP_DB_TRIGGER ;
 int tegra_hsp_channel_writel (int *,int,int ) ;

__attribute__((used)) static int tegra_hsp_doorbell_send_data(struct mbox_chan *chan, void *data)
{
 struct tegra_hsp_doorbell *db = chan->con_priv;

 tegra_hsp_channel_writel(&db->channel, 1, HSP_DB_TRIGGER);

 return 0;
}
