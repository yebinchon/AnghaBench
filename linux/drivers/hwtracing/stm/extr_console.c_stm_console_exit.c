
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;


 TYPE_1__ stm_console ;
 int stm_source_unregister_device (int *) ;

__attribute__((used)) static void stm_console_exit(void)
{
 stm_source_unregister_device(&stm_console.data);
}
