
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ddi; } ;
typedef TYPE_1__ hil_mlc ;


 int hil_mlc_clear_di_map (TYPE_1__*,int) ;

__attribute__((used)) static int hilse_dec_ddi(hil_mlc *mlc, int unused)
{
 mlc->ddi--;
 if (mlc->ddi <= -1) {
  mlc->ddi = -1;
  hil_mlc_clear_di_map(mlc, 0);
  return -1;
 }
 hil_mlc_clear_di_map(mlc, mlc->ddi + 1);

 return 0;
}
