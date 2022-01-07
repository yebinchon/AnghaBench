
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct paace {int dummy; } ;


 unsigned long ULONG_MAX ;
 unsigned long gen_pool_alloc (int ,int) ;
 int spaace_pool ;
 scalar_t__ spaact ;

__attribute__((used)) static unsigned long pamu_get_fspi_and_allocate(u32 subwin_cnt)
{
 unsigned long spaace_addr;

 spaace_addr = gen_pool_alloc(spaace_pool, subwin_cnt * sizeof(struct paace));
 if (!spaace_addr)
  return ULONG_MAX;

 return (spaace_addr - (unsigned long)spaact) / (sizeof(struct paace));
}
