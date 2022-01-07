
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stm_unregister_protocol (int *) ;
 int sys_t_pdrv ;

__attribute__((used)) static void sys_t_stm_exit(void)
{
 stm_unregister_protocol(&sys_t_pdrv);
}
