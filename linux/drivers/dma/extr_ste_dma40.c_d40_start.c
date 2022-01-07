
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_chan {int dummy; } ;


 int D40_DMA_RUN ;
 int d40_channel_execute_command (struct d40_chan*,int ) ;

__attribute__((used)) static int d40_start(struct d40_chan *d40c)
{
 return d40_channel_execute_command(d40c, D40_DMA_RUN);
}
