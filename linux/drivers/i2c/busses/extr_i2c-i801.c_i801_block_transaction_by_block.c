
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int* block; } ;
struct i801_priv {int dummy; } ;


 int EOPNOTSUPP ;
 int EPROTO ;

 int I2C_SMBUS_BLOCK_MAX ;

 char I2C_SMBUS_READ ;
 char I2C_SMBUS_WRITE ;
 int I801_BLOCK_DATA ;
 int I801_BLOCK_PROC_CALL ;
 int SMBBLKDAT (struct i801_priv*) ;
 int SMBHSTCNT (struct i801_priv*) ;
 int SMBHSTCNT_PEC_EN ;
 int SMBHSTDAT0 (struct i801_priv*) ;
 int i801_transaction (struct i801_priv*,int) ;
 void* inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_block_transaction_by_block(struct i801_priv *priv,
        union i2c_smbus_data *data,
        char read_write, int command,
        int hwpec)
{
 int i, len;
 int status;
 int xact = hwpec ? SMBHSTCNT_PEC_EN : 0;

 switch (command) {
 case 128:
  xact |= I801_BLOCK_PROC_CALL;
  break;
 case 129:
  xact |= I801_BLOCK_DATA;
  break;
 default:
  return -EOPNOTSUPP;
 }

 inb_p(SMBHSTCNT(priv));


 if (read_write == I2C_SMBUS_WRITE) {
  len = data->block[0];
  outb_p(len, SMBHSTDAT0(priv));
  for (i = 0; i < len; i++)
   outb_p(data->block[i+1], SMBBLKDAT(priv));
 }

 status = i801_transaction(priv, xact);
 if (status)
  return status;

 if (read_write == I2C_SMBUS_READ ||
     command == 128) {
  len = inb_p(SMBHSTDAT0(priv));
  if (len < 1 || len > I2C_SMBUS_BLOCK_MAX)
   return -EPROTO;

  data->block[0] = len;
  for (i = 0; i < len; i++)
   data->block[i + 1] = inb_p(SMBBLKDAT(priv));
 }
 return 0;
}
