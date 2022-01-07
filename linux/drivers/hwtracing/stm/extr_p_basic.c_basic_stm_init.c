
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basic_pdrv ;
 int stm_register_protocol (int *) ;

__attribute__((used)) static int basic_stm_init(void)
{
 return stm_register_protocol(&basic_pdrv);
}
