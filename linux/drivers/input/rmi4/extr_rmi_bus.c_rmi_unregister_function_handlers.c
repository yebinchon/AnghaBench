
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (int ) ;
 int __rmi_unregister_function_handlers (scalar_t__) ;
 int fn_handlers ;

__attribute__((used)) static void rmi_unregister_function_handlers(void)
{
 __rmi_unregister_function_handlers(ARRAY_SIZE(fn_handlers) - 1);
}
