
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int di_scratch; int * di; } ;
typedef TYPE_1__ hil_mlc ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void hil_mlc_copy_di_scratch(hil_mlc *mlc, int idx)
{
 memcpy(&mlc->di[idx], &mlc->di_scratch, sizeof(mlc->di_scratch));
}
