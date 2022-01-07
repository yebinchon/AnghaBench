
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ssi_protocol {int channel_id_cmd; int channel_id_data; TYPE_1__* netdev; int link; int work; struct hsi_client* cl; int tx_usecnt; int cmdqueue; int txqueue; int keep_alive; int tx_wd; int rx_wd; int lock; } ;
struct hsi_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int max_mtu; int min_mtu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NET_NAME_UNKNOWN ;
 int PHONET_MIN_MTU ;
 int SET_NETDEV_DEV (TYPE_1__*,struct device*) ;
 int SSIP_MAX_MTU ;
 int TIMER_DEFERRABLE ;
 TYPE_1__* alloc_netdev (int ,char const*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int dev_dbg (struct device*,char*,int,int) ;
 int dev_err (struct device*,char*,...) ;
 int free_netdev (TYPE_1__*) ;
 int hsi_client_set_drvdata (struct hsi_client*,struct ssi_protocol*) ;
 void* hsi_get_channel_id_by_name (struct hsi_client*,char*) ;
 int kfree (struct ssi_protocol*) ;
 struct ssi_protocol* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int netif_carrier_off (TYPE_1__*) ;
 int register_netdev (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int ssip_alloc_cmds (struct ssi_protocol*) ;
 int ssip_free_cmds (struct ssi_protocol*) ;
 int ssip_keep_alive ;
 int ssip_list ;
 int ssip_pn_setup ;
 int ssip_rx_wd ;
 int ssip_tx_wd ;
 int ssip_xmit_work ;
 int timer_setup (int *,int ,int ) ;
 struct hsi_client* to_hsi_client (struct device*) ;

__attribute__((used)) static int ssi_protocol_probe(struct device *dev)
{
 static const char ifname[] = "phonet%d";
 struct hsi_client *cl = to_hsi_client(dev);
 struct ssi_protocol *ssi;
 int err;

 ssi = kzalloc(sizeof(*ssi), GFP_KERNEL);
 if (!ssi)
  return -ENOMEM;

 spin_lock_init(&ssi->lock);
 timer_setup(&ssi->rx_wd, ssip_rx_wd, TIMER_DEFERRABLE);
 timer_setup(&ssi->tx_wd, ssip_tx_wd, TIMER_DEFERRABLE);
 timer_setup(&ssi->keep_alive, ssip_keep_alive, 0);
 INIT_LIST_HEAD(&ssi->txqueue);
 INIT_LIST_HEAD(&ssi->cmdqueue);
 atomic_set(&ssi->tx_usecnt, 0);
 hsi_client_set_drvdata(cl, ssi);
 ssi->cl = cl;
 INIT_WORK(&ssi->work, ssip_xmit_work);

 ssi->channel_id_cmd = hsi_get_channel_id_by_name(cl, "mcsaab-control");
 if (ssi->channel_id_cmd < 0) {
  err = ssi->channel_id_cmd;
  dev_err(dev, "Could not get cmd channel (%d)\n", err);
  goto out;
 }

 ssi->channel_id_data = hsi_get_channel_id_by_name(cl, "mcsaab-data");
 if (ssi->channel_id_data < 0) {
  err = ssi->channel_id_data;
  dev_err(dev, "Could not get data channel (%d)\n", err);
  goto out;
 }

 err = ssip_alloc_cmds(ssi);
 if (err < 0) {
  dev_err(dev, "No memory for commands\n");
  goto out;
 }

 ssi->netdev = alloc_netdev(0, ifname, NET_NAME_UNKNOWN, ssip_pn_setup);
 if (!ssi->netdev) {
  dev_err(dev, "No memory for netdev\n");
  err = -ENOMEM;
  goto out1;
 }


 ssi->netdev->min_mtu = PHONET_MIN_MTU;
 ssi->netdev->max_mtu = SSIP_MAX_MTU;

 SET_NETDEV_DEV(ssi->netdev, dev);
 netif_carrier_off(ssi->netdev);
 err = register_netdev(ssi->netdev);
 if (err < 0) {
  dev_err(dev, "Register netdev failed (%d)\n", err);
  goto out2;
 }

 list_add(&ssi->link, &ssip_list);

 dev_dbg(dev, "channel configuration: cmd=%d, data=%d\n",
  ssi->channel_id_cmd, ssi->channel_id_data);

 return 0;
out2:
 free_netdev(ssi->netdev);
out1:
 ssip_free_cmds(ssi);
out:
 kfree(ssi);

 return err;
}
