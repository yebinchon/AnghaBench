
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_f30_ctrl_data {int* regs; } ;


 int BIT (int) ;

__attribute__((used)) static bool rmi_f30_is_valid_button(int button, struct rmi_f30_ctrl_data *ctrl)
{
 int byte_position = button >> 3;
 int bit_position = button & 0x07;





 return !(ctrl[2].regs[byte_position] & BIT(bit_position)) &&
  (ctrl[3].regs[byte_position] & BIT(bit_position));
}
