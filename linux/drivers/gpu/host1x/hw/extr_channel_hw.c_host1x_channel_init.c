
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel {scalar_t__ regs; } ;
struct host1x {scalar_t__ regs; } ;


 int enable_gather_filter (struct host1x*,struct host1x_channel*) ;

__attribute__((used)) static int host1x_channel_init(struct host1x_channel *ch, struct host1x *dev,
          unsigned int index)
{

 ch->regs = dev->regs + index * 0x4000;



 enable_gather_filter(dev, ch);
 return 0;
}
