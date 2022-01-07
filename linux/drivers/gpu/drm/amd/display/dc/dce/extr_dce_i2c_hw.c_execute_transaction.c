
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_i2c_hw {scalar_t__ buffer_used_bytes; scalar_t__ transaction_count; } ;


 int DC_I2C_CONTROL ;
 int DC_I2C_DDC1_CLK_DRIVE_EN ;
 int DC_I2C_DDC1_DATA_DRIVE_EN ;
 int DC_I2C_DDC1_DATA_DRIVE_SEL ;
 int DC_I2C_DDC1_INTRA_BYTE_DELAY ;
 int DC_I2C_DDC1_INTRA_TRANSACTION_DELAY ;
 int DC_I2C_DDC1_SETUP ;
 int DC_I2C_GO ;
 int DC_I2C_SEND_RESET ;
 int DC_I2C_SOFT_RESET ;
 int DC_I2C_SW_STATUS_RESET ;
 int DC_I2C_TRANSACTION_COUNT ;
 int FN (int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_5 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 int REG_UPDATE_N (int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SETUP ;

__attribute__((used)) static void execute_transaction(
 struct dce_i2c_hw *dce_i2c_hw)
{
 REG_UPDATE_N(SETUP, 5,
       FN(DC_I2C_DDC1_SETUP, DC_I2C_DDC1_DATA_DRIVE_EN), 0,
       FN(DC_I2C_DDC1_SETUP, DC_I2C_DDC1_CLK_DRIVE_EN), 0,
       FN(DC_I2C_DDC1_SETUP, DC_I2C_DDC1_DATA_DRIVE_SEL), 0,
       FN(DC_I2C_DDC1_SETUP, DC_I2C_DDC1_INTRA_TRANSACTION_DELAY), 0,
       FN(DC_I2C_DDC1_SETUP, DC_I2C_DDC1_INTRA_BYTE_DELAY), 0);


 REG_UPDATE_5(DC_I2C_CONTROL,
       DC_I2C_SOFT_RESET, 0,
       DC_I2C_SW_STATUS_RESET, 0,
       DC_I2C_SEND_RESET, 0,
       DC_I2C_GO, 0,
       DC_I2C_TRANSACTION_COUNT, dce_i2c_hw->transaction_count - 1);


 REG_UPDATE(DC_I2C_CONTROL, DC_I2C_GO, 1);




 dce_i2c_hw->transaction_count = 0;
 dce_i2c_hw->buffer_used_bytes = 0;
}
