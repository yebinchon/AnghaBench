
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vadc_priv {unsigned int nchannels; int dev; struct vadc_channel_prop* chan_props; } ;
struct vadc_channel_prop {unsigned int channel; } ;


 int dev_dbg (int ,char*,unsigned int) ;

__attribute__((used)) static struct vadc_channel_prop *vadc_get_channel(struct vadc_priv *vadc,
        unsigned int num)
{
 unsigned int i;

 for (i = 0; i < vadc->nchannels; i++)
  if (vadc->chan_props[i].channel == num)
   return &vadc->chan_props[i];

 dev_dbg(vadc->dev, "no such channel %02x\n", num);

 return ((void*)0);
}
