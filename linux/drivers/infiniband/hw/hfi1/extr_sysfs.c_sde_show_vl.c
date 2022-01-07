
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int sdma_engine_get_vl (struct sdma_engine*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t sde_show_vl(struct sdma_engine *sde, char *buf)
{
 int vl;

 vl = sdma_engine_get_vl(sde);
 if (vl < 0)
  return vl;

 return snprintf(buf, PAGE_SIZE, "%d\n", vl);
}
