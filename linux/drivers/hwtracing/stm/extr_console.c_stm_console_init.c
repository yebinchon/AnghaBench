
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;


 TYPE_1__ stm_console ;
 int stm_source_register_device (int *,int *) ;

__attribute__((used)) static int stm_console_init(void)
{
 return stm_source_register_device(((void*)0), &stm_console.data);
}
