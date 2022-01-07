
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum ddc_transaction_type { ____Placeholder_ddc_transaction_type } ddc_transaction_type ;


 int DDC_TRANSACTION_TYPE_I2C ;
 int DDC_TRANSACTION_TYPE_I2C_OVER_AUX ;
 int DDC_TRANSACTION_TYPE_NONE ;
__attribute__((used)) static enum ddc_transaction_type get_ddc_transaction_type(
  enum signal_type sink_signal)
{
 enum ddc_transaction_type transaction_type = DDC_TRANSACTION_TYPE_NONE;

 switch (sink_signal) {
 case 132:
 case 133:
 case 130:
 case 129:
 case 128:
  transaction_type = DDC_TRANSACTION_TYPE_I2C;
  break;

 case 135:
 case 131:
  transaction_type = DDC_TRANSACTION_TYPE_I2C_OVER_AUX;
  break;

 case 134:



  transaction_type = DDC_TRANSACTION_TYPE_I2C_OVER_AUX;
  break;

 default:
  break;
 }

 return transaction_type;
}
