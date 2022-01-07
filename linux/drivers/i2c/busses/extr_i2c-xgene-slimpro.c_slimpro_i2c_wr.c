
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slimpro_i2c_dev {int dummy; } ;


 int SLIMPRO_IIC_BUS ;
 int SLIMPRO_IIC_ENCODE_ADDR (int ) ;
 int SLIMPRO_IIC_ENCODE_MSG (int ,int ,int ,int ,int ,int ) ;
 int SLIMPRO_IIC_WRITE ;
 int slimpro_i2c_send_msg (struct slimpro_i2c_dev*,int *,int *) ;

__attribute__((used)) static int slimpro_i2c_wr(struct slimpro_i2c_dev *ctx, u32 chip,
     u32 addr, u32 addrlen, u32 protocol, u32 writelen,
     u32 data)
{
 u32 msg[3];

 msg[0] = SLIMPRO_IIC_ENCODE_MSG(SLIMPRO_IIC_BUS, chip,
     SLIMPRO_IIC_WRITE, protocol, addrlen, writelen);
 msg[1] = SLIMPRO_IIC_ENCODE_ADDR(addr);
 msg[2] = data;

 return slimpro_i2c_send_msg(ctx, msg, msg);
}
