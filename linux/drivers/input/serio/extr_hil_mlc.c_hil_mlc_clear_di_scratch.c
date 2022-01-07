
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int di_scratch; } ;
typedef TYPE_1__ hil_mlc ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void hil_mlc_clear_di_scratch(hil_mlc *mlc)
{
 memset(&mlc->di_scratch, 0, sizeof(mlc->di_scratch));
}
