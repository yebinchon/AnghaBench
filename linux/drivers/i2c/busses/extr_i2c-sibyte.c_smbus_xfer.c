
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_algo_sibyte_data {int dummy; } ;
struct i2c_adapter {struct i2c_algo_sibyte_data* algo_data; } ;


 int EIO ;
 int ENXIO ;
 int EOPNOTSUPP ;



 char I2C_SMBUS_READ ;

 int M_SMB_BUSY ;
 int M_SMB_ERROR ;
 int M_SMB_ERROR_TYPE ;
 int M_SMB_QDATA ;
 int R_SMB_CMD ;
 int R_SMB_DATA ;
 int R_SMB_START ;
 int R_SMB_STATUS ;
 int SMB_CSR (struct i2c_algo_sibyte_data*,int ) ;
 int V_SMB_ADDR (int ) ;
 int V_SMB_CMD (int ) ;
 int V_SMB_LB (int) ;
 int V_SMB_MB (int) ;
 int V_SMB_TT_CMD_RD1BYTE ;
 int V_SMB_TT_CMD_RD2BYTE ;
 int V_SMB_TT_QUICKCMD ;
 int V_SMB_TT_RD1BYTE ;
 int V_SMB_TT_WR1BYTE ;
 int V_SMB_TT_WR2BYTE ;
 int csr_in32 (int ) ;
 int csr_out32 (int,int ) ;

__attribute__((used)) static int smbus_xfer(struct i2c_adapter *i2c_adap, u16 addr,
        unsigned short flags, char read_write,
        u8 command, int size, union i2c_smbus_data * data)
{
 struct i2c_algo_sibyte_data *adap = i2c_adap->algo_data;
 int data_bytes = 0;
 int error;

 while (csr_in32(SMB_CSR(adap, R_SMB_STATUS)) & M_SMB_BUSY)
  ;

 switch (size) {
 case 129:
  csr_out32((V_SMB_ADDR(addr) |
      (read_write == I2C_SMBUS_READ ? M_SMB_QDATA : 0) |
      V_SMB_TT_QUICKCMD), SMB_CSR(adap, R_SMB_START));
  break;
 case 131:
  if (read_write == I2C_SMBUS_READ) {
   csr_out32((V_SMB_ADDR(addr) | V_SMB_TT_RD1BYTE),
      SMB_CSR(adap, R_SMB_START));
   data_bytes = 1;
  } else {
   csr_out32(V_SMB_CMD(command), SMB_CSR(adap, R_SMB_CMD));
   csr_out32((V_SMB_ADDR(addr) | V_SMB_TT_WR1BYTE),
      SMB_CSR(adap, R_SMB_START));
  }
  break;
 case 130:
  csr_out32(V_SMB_CMD(command), SMB_CSR(adap, R_SMB_CMD));
  if (read_write == I2C_SMBUS_READ) {
   csr_out32((V_SMB_ADDR(addr) | V_SMB_TT_CMD_RD1BYTE),
      SMB_CSR(adap, R_SMB_START));
   data_bytes = 1;
  } else {
   csr_out32(V_SMB_LB(data->byte),
      SMB_CSR(adap, R_SMB_DATA));
   csr_out32((V_SMB_ADDR(addr) | V_SMB_TT_WR2BYTE),
      SMB_CSR(adap, R_SMB_START));
  }
  break;
 case 128:
  csr_out32(V_SMB_CMD(command), SMB_CSR(adap, R_SMB_CMD));
  if (read_write == I2C_SMBUS_READ) {
   csr_out32((V_SMB_ADDR(addr) | V_SMB_TT_CMD_RD2BYTE),
      SMB_CSR(adap, R_SMB_START));
   data_bytes = 2;
  } else {
   csr_out32(V_SMB_LB(data->word & 0xff),
      SMB_CSR(adap, R_SMB_DATA));
   csr_out32(V_SMB_MB(data->word >> 8),
      SMB_CSR(adap, R_SMB_DATA));
   csr_out32((V_SMB_ADDR(addr) | V_SMB_TT_WR2BYTE),
      SMB_CSR(adap, R_SMB_START));
  }
  break;
 default:
  return -EOPNOTSUPP;
 }

 while (csr_in32(SMB_CSR(adap, R_SMB_STATUS)) & M_SMB_BUSY)
  ;

 error = csr_in32(SMB_CSR(adap, R_SMB_STATUS));
 if (error & M_SMB_ERROR) {

  csr_out32(M_SMB_ERROR, SMB_CSR(adap, R_SMB_STATUS));
  return (error & M_SMB_ERROR_TYPE) ? -EIO : -ENXIO;
 }

 if (data_bytes == 1)
  data->byte = csr_in32(SMB_CSR(adap, R_SMB_DATA)) & 0xff;
 if (data_bytes == 2)
  data->word = csr_in32(SMB_CSR(adap, R_SMB_DATA)) & 0xffff;

 return 0;
}
