
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flow; int num_hw_channels; int mode; } ;
struct hsi_client {TYPE_1__ rx_cfg; } ;
struct hsc_rx_config {int flow; int channels; int mode; } ;



__attribute__((used)) static inline void hsc_rx_get(struct hsi_client *cl, struct hsc_rx_config *rxc)
{
 rxc->mode = cl->rx_cfg.mode;
 rxc->channels = cl->rx_cfg.num_hw_channels;
 rxc->flow = cl->rx_cfg.flow;
}
