
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGN (size_t,int ) ;
 int TEGRA_IVC_ALIGN ;

size_t tegra_ivc_align(size_t size)
{
 return ALIGN(size, TEGRA_IVC_ALIGN);
}
