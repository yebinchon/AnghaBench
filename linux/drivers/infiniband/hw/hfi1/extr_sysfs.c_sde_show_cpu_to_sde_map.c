
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dummy; } ;
typedef int ssize_t ;


 int sdma_get_cpu_to_sde_map (struct sdma_engine*,char*) ;

__attribute__((used)) static ssize_t sde_show_cpu_to_sde_map(struct sdma_engine *sde, char *buf)
{
 return sdma_get_cpu_to_sde_map(sde, buf);
}
