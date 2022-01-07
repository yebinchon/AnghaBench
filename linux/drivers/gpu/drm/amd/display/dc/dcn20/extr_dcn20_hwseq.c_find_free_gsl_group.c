
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc {TYPE_2__* res_pool; } ;
struct TYPE_3__ {scalar_t__ gsl_0; scalar_t__ gsl_1; scalar_t__ gsl_2; } ;
struct TYPE_4__ {TYPE_1__ gsl_groups; } ;



__attribute__((used)) static int find_free_gsl_group(const struct dc *dc)
{
 if (dc->res_pool->gsl_groups.gsl_0 == 0)
  return 1;
 if (dc->res_pool->gsl_groups.gsl_1 == 0)
  return 2;
 if (dc->res_pool->gsl_groups.gsl_2 == 0)
  return 3;

 return 0;
}
