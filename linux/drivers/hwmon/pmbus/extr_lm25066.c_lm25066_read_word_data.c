
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct lm25066_data {int id; } ;
struct i2c_client {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int ENODATA ;
 int LM25066_MFR_IIN_OC_WARN_LIMIT ;
 int LM25066_MFR_PIN_OP_WARN_LIMIT ;
 int LM25066_MFR_READ_IIN ;
 int LM25066_MFR_READ_PIN ;
 int LM25066_READ_AVG_IIN ;
 int LM25066_READ_AVG_PIN ;
 int LM25066_READ_AVG_VIN ;
 int LM25066_READ_AVG_VOUT ;
 int LM25066_READ_PIN_PEAK ;
 int LM25066_READ_VAUX ;
 int LM25066_SAMPLES_FOR_AVG ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_byte_data (struct i2c_client*,int ,int ) ;
 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;
 struct lm25066_data* to_lm25066_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int lm25066_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct lm25066_data *data = to_lm25066_data(info);
 int ret;

 switch (reg) {
 case 136:
  ret = pmbus_read_word_data(client, 0, LM25066_READ_VAUX);
  if (ret < 0)
   break;

  switch (data->id) {
  case 132:

   ret = DIV_ROUND_CLOSEST(ret * 293, 6140);
   break;
  case 131:

   ret = DIV_ROUND_CLOSEST(ret * 2832, 45400);
   break;
  case 130:

   ret = DIV_ROUND_CLOSEST(ret * 70, 453);
   break;
  case 129:
  case 128:

   ret = DIV_ROUND_CLOSEST(ret * 725, 2180);
   break;
  }
  break;
 case 142:
  ret = pmbus_read_word_data(client, 0, LM25066_MFR_READ_IIN);
  break;
 case 141:
  ret = pmbus_read_word_data(client, 0, LM25066_MFR_READ_PIN);
  break;
 case 144:
  ret = pmbus_read_word_data(client, 0,
        LM25066_MFR_IIN_OC_WARN_LIMIT);
  break;
 case 143:
  ret = pmbus_read_word_data(client, 0,
        LM25066_MFR_PIN_OP_WARN_LIMIT);
  break;
 case 137:
  ret = pmbus_read_word_data(client, 0, LM25066_READ_AVG_VIN);
  break;
 case 135:
  ret = pmbus_read_word_data(client, 0, LM25066_READ_AVG_VOUT);
  break;
 case 140:
  ret = pmbus_read_word_data(client, 0, LM25066_READ_AVG_IIN);
  break;
 case 139:
  ret = pmbus_read_word_data(client, 0, LM25066_READ_AVG_PIN);
  break;
 case 138:
  ret = pmbus_read_word_data(client, 0, LM25066_READ_PIN_PEAK);
  break;
 case 134:
  ret = 0;
  break;
 case 133:
  ret = pmbus_read_byte_data(client, 0, LM25066_SAMPLES_FOR_AVG);
  if (ret < 0)
   break;
  ret = 1 << ret;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
