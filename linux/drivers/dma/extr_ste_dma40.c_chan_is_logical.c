
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_chan {int dummy; } ;


 int chan_is_physical (struct d40_chan*) ;

__attribute__((used)) static bool chan_is_logical(struct d40_chan *chan)
{
 return !chan_is_physical(chan);
}
