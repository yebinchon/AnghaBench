
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pmbus_driver_info {int dummy; } ;
struct lm25066_data {int rlimit; } ;
struct i2c_client {int dummy; } ;
typedef int s16 ;


 scalar_t__ DIV_ROUND_CLOSEST (int,int) ;
 int ENODATA ;
 int LM25056_VAUX_OV_WARN_LIMIT ;
 int LM25056_VAUX_UV_WARN_LIMIT ;
 int LM25066_CLEAR_PIN_PEAK ;
 int LM25066_MFR_IIN_OC_WARN_LIMIT ;
 int LM25066_MFR_PIN_OP_WARN_LIMIT ;
 int LM25066_SAMPLES_FOR_AVG ;
 int LM25066_SAMPLES_FOR_AVG_MAX ;
 scalar_t__ clamp_val (scalar_t__,int,int ) ;
 int ilog2 (scalar_t__) ;
 int pmbus_clear_cache (struct i2c_client*) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_write_byte (struct i2c_client*,int ,int ) ;
 int pmbus_write_byte_data (struct i2c_client*,int ,int ,int ) ;
 int pmbus_write_word_data (struct i2c_client*,int ,int,scalar_t__) ;
 struct lm25066_data* to_lm25066_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int lm25066_write_word_data(struct i2c_client *client, int page, int reg,
       u16 word)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct lm25066_data *data = to_lm25066_data(info);
 int ret;

 switch (reg) {
 case 138:
 case 137:
 case 128:
 case 141:
 case 140:
 case 143:
 case 133:
 case 134:
 case 136:
 case 135:
  word = ((s16)word < 0) ? 0 : clamp_val(word, 0, data->rlimit);
  ret = pmbus_write_word_data(client, 0, reg, word);
  pmbus_clear_cache(client);
  break;
 case 142:
  word = ((s16)word < 0) ? 0 : clamp_val(word, 0, data->rlimit);
  ret = pmbus_write_word_data(client, 0,
         LM25066_MFR_IIN_OC_WARN_LIMIT,
         word);
  pmbus_clear_cache(client);
  break;
 case 139:
  word = ((s16)word < 0) ? 0 : clamp_val(word, 0, data->rlimit);
  ret = pmbus_write_word_data(client, 0,
         LM25066_MFR_PIN_OP_WARN_LIMIT,
         word);
  pmbus_clear_cache(client);
  break;
 case 129:

  word = DIV_ROUND_CLOSEST((int)word * 6140, 293);
  word = ((s16)word < 0) ? 0 : clamp_val(word, 0, data->rlimit);
  ret = pmbus_write_word_data(client, 0,
         LM25056_VAUX_UV_WARN_LIMIT, word);
  pmbus_clear_cache(client);
  break;
 case 130:

  word = DIV_ROUND_CLOSEST((int)word * 6140, 293);
  word = ((s16)word < 0) ? 0 : clamp_val(word, 0, data->rlimit);
  ret = pmbus_write_word_data(client, 0,
         LM25056_VAUX_OV_WARN_LIMIT, word);
  pmbus_clear_cache(client);
  break;
 case 132:
  ret = pmbus_write_byte(client, 0, LM25066_CLEAR_PIN_PEAK);
  break;
 case 131:
  word = clamp_val(word, 1, LM25066_SAMPLES_FOR_AVG_MAX);
  ret = pmbus_write_byte_data(client, 0, LM25066_SAMPLES_FOR_AVG,
         ilog2(word));
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
