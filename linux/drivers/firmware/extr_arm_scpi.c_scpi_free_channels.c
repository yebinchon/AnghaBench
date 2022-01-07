
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_drvinfo {int num_chans; TYPE_1__* channels; } ;
struct TYPE_2__ {int chan; } ;


 int mbox_free_channel (int ) ;

__attribute__((used)) static void scpi_free_channels(void *data)
{
 struct scpi_drvinfo *info = data;
 int i;

 for (i = 0; i < info->num_chans; i++)
  mbox_free_channel(info->channels[i].chan);
}
