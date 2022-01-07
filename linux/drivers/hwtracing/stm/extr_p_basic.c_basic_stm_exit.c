
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basic_pdrv ;
 int stm_unregister_protocol (int *) ;

__attribute__((used)) static void basic_stm_exit(void)
{
 stm_unregister_protocol(&basic_pdrv);
}
