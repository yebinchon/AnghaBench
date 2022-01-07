
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arb_mode; int speed; int num_hw_channels; int mode; } ;
struct hsi_client {TYPE_1__ tx_cfg; } ;
struct hsc_tx_config {int arb_mode; int speed; int channels; int mode; } ;



__attribute__((used)) static inline void hsc_tx_get(struct hsi_client *cl, struct hsc_tx_config *txc)
{
 txc->mode = cl->tx_cfg.mode;
 txc->channels = cl->tx_cfg.num_hw_channels;
 txc->speed = cl->tx_cfg.speed;
 txc->arb_mode = cl->tx_cfg.arb_mode;
}
