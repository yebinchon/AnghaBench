
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct hsi_client* channels; } ;
struct TYPE_3__ {struct hsi_client* channels; } ;
struct hsi_client {TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;
struct device {int dummy; } ;


 int kfree (struct hsi_client*) ;
 struct hsi_client* to_hsi_client (struct device*) ;

__attribute__((used)) static void hsi_client_release(struct device *dev)
{
 struct hsi_client *cl = to_hsi_client(dev);

 kfree(cl->tx_cfg.channels);
 kfree(cl->rx_cfg.channels);
 kfree(cl);
}
