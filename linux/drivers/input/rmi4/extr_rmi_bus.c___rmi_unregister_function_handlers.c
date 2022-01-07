
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fn_handlers ;
 int rmi_unregister_function_handler (int ) ;

__attribute__((used)) static void __rmi_unregister_function_handlers(int start_idx)
{
 int i;

 for (i = start_idx; i >= 0; i--)
  rmi_unregister_function_handler(fn_handlers[i]);
}
