
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; } ;


 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int i2c_smbus_pec (int ,int *,int) ;

__attribute__((used)) static u8 i2c_smbus_msg_pec(u8 pec, struct i2c_msg *msg)
{

 u8 addr = i2c_8bit_addr_from_msg(msg);
 pec = i2c_smbus_pec(pec, &addr, 1);


 return i2c_smbus_pec(pec, msg->buf, msg->len);
}
