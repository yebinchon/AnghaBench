
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_phy_chan {int * serving; } ;
struct pl08x_driver_data {int dummy; } ;



__attribute__((used)) static inline void pl08x_put_phy_channel(struct pl08x_driver_data *pl08x,
      struct pl08x_phy_chan *ch)
{
 ch->serving = ((void*)0);
}
