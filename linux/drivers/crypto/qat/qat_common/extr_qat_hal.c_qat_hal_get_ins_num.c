
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int inst_4b ;

int qat_hal_get_ins_num(void)
{
 return ARRAY_SIZE(inst_4b);
}
