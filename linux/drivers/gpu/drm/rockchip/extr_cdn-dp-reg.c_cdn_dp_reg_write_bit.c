
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cdn_dp_device {int dummy; } ;
typedef int field ;


 int DPTX_WRITE_FIELD ;
 int MB_MODULE_ID_DP_TX ;
 int cdn_dp_mailbox_send (struct cdn_dp_device*,int ,int ,int,int*) ;

__attribute__((used)) static int cdn_dp_reg_write_bit(struct cdn_dp_device *dp, u16 addr,
    u8 start_bit, u8 bits_no, u32 val)
{
 u8 field[8];

 field[0] = (addr >> 8) & 0xff;
 field[1] = addr & 0xff;
 field[2] = start_bit;
 field[3] = bits_no;
 field[4] = (val >> 24) & 0xff;
 field[5] = (val >> 16) & 0xff;
 field[6] = (val >> 8) & 0xff;
 field[7] = val & 0xff;

 return cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_WRITE_FIELD,
       sizeof(field), field);
}
