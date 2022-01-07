
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int netdev; int link; } ;
struct hsi_client {int dummy; } ;
struct device {int dummy; } ;


 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_client_set_drvdata (struct hsi_client*,int *) ;
 int kfree (struct ssi_protocol*) ;
 int list_del (int *) ;
 int ssip_free_cmds (struct ssi_protocol*) ;
 struct hsi_client* to_hsi_client (struct device*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int ssi_protocol_remove(struct device *dev)
{
 struct hsi_client *cl = to_hsi_client(dev);
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);

 list_del(&ssi->link);
 unregister_netdev(ssi->netdev);
 ssip_free_cmds(ssi);
 hsi_client_set_drvdata(cl, ((void*)0));
 kfree(ssi);

 return 0;
}
