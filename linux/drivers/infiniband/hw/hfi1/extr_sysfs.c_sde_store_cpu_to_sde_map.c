
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dummy; } ;
typedef int ssize_t ;


 int sdma_set_cpu_to_sde_map (struct sdma_engine*,char const*,size_t) ;

__attribute__((used)) static ssize_t sde_store_cpu_to_sde_map(struct sdma_engine *sde,
     const char *buf, size_t count)
{
 return sdma_set_cpu_to_sde_map(sde, buf, count);
}
