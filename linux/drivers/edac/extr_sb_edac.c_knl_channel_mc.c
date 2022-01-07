
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;

__attribute__((used)) static int knl_channel_mc(int channel)
{
 WARN_ON(channel < 0 || channel >= 6);

 return channel < 3 ? 1 : 0;
}
