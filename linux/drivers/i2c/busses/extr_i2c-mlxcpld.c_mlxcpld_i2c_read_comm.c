
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxcpld_i2c_priv {int base_addr; } ;


 int inb (int) ;
 int inl (int) ;
 int inw (int) ;
 int mlxcpld_i2c_lpc_read_buf (int*,int,int) ;

__attribute__((used)) static void mlxcpld_i2c_read_comm(struct mlxcpld_i2c_priv *priv, u8 offs,
      u8 *data, u8 datalen)
{
 u32 addr = priv->base_addr + offs;

 switch (datalen) {
 case 1:
  *(data) = inb(addr);
  break;
 case 2:
  *((u16 *)data) = inw(addr);
  break;
 case 3:
  *((u16 *)data) = inw(addr);
  *(data + 2) = inb(addr + 2);
  break;
 case 4:
  *((u32 *)data) = inl(addr);
  break;
 default:
  mlxcpld_i2c_lpc_read_buf(data, datalen, addr);
  break;
 }
}
