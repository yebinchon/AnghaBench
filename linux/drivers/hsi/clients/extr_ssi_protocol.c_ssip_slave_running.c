
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int netdev; } ;
struct hsi_client {int dummy; } ;


 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int netif_running (int ) ;

int ssip_slave_running(struct hsi_client *master)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(master);
 return netif_running(ssi->netdev);
}
