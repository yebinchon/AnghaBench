
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_desc_slot {int type; struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int desc_command; } ;


 int BUG () ;



 int XOR_DESC_OPERATION_MEMCPY ;
 int XOR_DESC_OPERATION_XOR ;

__attribute__((used)) static void mv_desc_set_mode(struct mv_xor_desc_slot *desc)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;

 switch (desc->type) {
 case 128:
 case 130:
  hw_desc->desc_command |= XOR_DESC_OPERATION_XOR;
  break;
 case 129:
  hw_desc->desc_command |= XOR_DESC_OPERATION_MEMCPY;
  break;
 default:
  BUG();
  return;
 }
}
