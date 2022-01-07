
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt1050_key_regs {int dummy; } ;


 struct qt1050_key_regs const* qt1050_key_regs_data ;

__attribute__((used)) static const struct qt1050_key_regs *qt1050_get_key_regs(int key_num)
{
 return &qt1050_key_regs_data[key_num];
}
