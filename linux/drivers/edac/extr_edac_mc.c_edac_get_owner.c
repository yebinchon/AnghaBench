
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* edac_mc_owner ;

const char *edac_get_owner(void)
{
 return edac_mc_owner;
}
