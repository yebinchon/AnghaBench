
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_channels; TYPE_1__* channels; } ;
struct hsi_client {TYPE_2__ rx_cfg; } ;
struct TYPE_3__ {int id; int name; } ;


 int ENOENT ;
 int ENXIO ;
 int strcmp (int ,char*) ;

int hsi_get_channel_id_by_name(struct hsi_client *cl, char *name)
{
 int i;

 if (!cl->rx_cfg.channels)
  return -ENOENT;

 for (i = 0; i < cl->rx_cfg.num_channels; i++)
  if (!strcmp(cl->rx_cfg.channels[i].name, name))
   return cl->rx_cfg.channels[i].id;

 return -ENXIO;
}
