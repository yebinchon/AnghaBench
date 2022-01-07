
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddi; } ;
typedef TYPE_1__ hil_mlc ;


 int BUG_ON (int) ;

__attribute__((used)) static int hilse_inc_ddi(hil_mlc *mlc, int unused)
{
 BUG_ON(mlc->ddi >= 6);
 mlc->ddi++;

 return 0;
}
