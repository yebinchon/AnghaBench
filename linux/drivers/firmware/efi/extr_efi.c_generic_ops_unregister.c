
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efivars_unregister (int *) ;
 int generic_efivars ;

__attribute__((used)) static void generic_ops_unregister(void)
{
 efivars_unregister(&generic_efivars);
}
