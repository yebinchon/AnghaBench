
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stm_register_protocol (int *) ;
 int sys_t_pdrv ;

__attribute__((used)) static int sys_t_stm_init(void)
{
 return stm_register_protocol(&sys_t_pdrv);
}
