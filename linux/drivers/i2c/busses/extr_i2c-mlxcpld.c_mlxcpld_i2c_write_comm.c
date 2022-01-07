
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxcpld_i2c_priv {int base_addr; } ;


 int mlxcpld_i2c_lpc_write_buf (int*,int,int) ;
 int outb (int,int) ;
 int outl (int,int) ;
 int outw (int ,int) ;

__attribute__((used)) static void mlxcpld_i2c_write_comm(struct mlxcpld_i2c_priv *priv, u8 offs,
       u8 *data, u8 datalen)
{
 u32 addr = priv->base_addr + offs;

 switch (datalen) {
 case 1:
  outb(*(data), addr);
  break;
 case 2:
  outw(*((u16 *)data), addr);
  break;
 case 3:
  outw(*((u16 *)data), addr);
  outb(*(data + 2), addr + 2);
  break;
 case 4:
  outl(*((u32 *)data), addr);
  break;
 default:
  mlxcpld_i2c_lpc_write_buf(data, datalen, addr);
  break;
 }
}
