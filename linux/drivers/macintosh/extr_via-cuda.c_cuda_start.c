
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* data; } ;


 size_t ACR ;
 size_t B ;
 size_t SR ;
 int SR_OUT ;
 scalar_t__ TREQ_asserted (int) ;
 int assert_TIP () ;
 int assert_TIP_and_TACK () ;
 int cuda_state ;
 TYPE_1__* current_req ;
 scalar_t__ data_index ;
 int in_8 (int *) ;
 scalar_t__ mcu_is_egret ;
 int out_8 (int *,int) ;
 int sent_first_byte ;
 int * via ;

__attribute__((used)) static void
cuda_start(void)
{

    if (current_req == ((void*)0))
 return;
    data_index = 0;
    if (TREQ_asserted(in_8(&via[B])))
 return;


    out_8(&via[ACR], in_8(&via[ACR]) | SR_OUT);
    out_8(&via[SR], current_req->data[data_index++]);
    if (mcu_is_egret)
 assert_TIP_and_TACK();
    else
 assert_TIP();
    cuda_state = sent_first_byte;
}
