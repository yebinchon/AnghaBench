
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int edac_mc_poll_msec ;

unsigned int edac_mc_get_poll_msec(void)
{
 return edac_mc_poll_msec;
}
