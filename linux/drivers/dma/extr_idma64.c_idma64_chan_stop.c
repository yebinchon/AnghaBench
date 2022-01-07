
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idma64_chan {int mask; } ;
struct idma64 {int dummy; } ;


 int CH_EN ;
 int channel_clear_bit (struct idma64*,int ,int ) ;

__attribute__((used)) static void idma64_chan_stop(struct idma64 *idma64, struct idma64_chan *idma64c)
{
 channel_clear_bit(idma64, CH_EN, idma64c->mask);
}
