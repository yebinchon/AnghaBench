
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_chan {scalar_t__ log_num; } ;


 scalar_t__ D40_PHY_CHAN ;

__attribute__((used)) static bool chan_is_physical(struct d40_chan *chan)
{
 return chan->log_num == D40_PHY_CHAN;
}
