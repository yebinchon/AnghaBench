
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct intel_qgv_info {int num_points; TYPE_1__* points; } ;
struct TYPE_2__ {int dclk; } ;


 int max (int,int ) ;

__attribute__((used)) static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
{
 u16 dclk = 0;
 int i;

 for (i = 0; i < qi->num_points; i++)
  dclk = max(dclk, qi->points[i].dclk);

 return dclk;
}
