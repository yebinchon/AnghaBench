
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int LM25056_VAUX_OV_WARN_LIMIT ;
 int LM25056_VAUX_UV_WARN_LIMIT ;


 int lm25066_read_word_data (struct i2c_client*,int,int) ;
 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int lm25056_read_word_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 switch (reg) {
 case 128:
  ret = pmbus_read_word_data(client, 0,
        LM25056_VAUX_UV_WARN_LIMIT);
  if (ret < 0)
   break;

  ret = DIV_ROUND_CLOSEST(ret * 293, 6140);
  break;
 case 129:
  ret = pmbus_read_word_data(client, 0,
        LM25056_VAUX_OV_WARN_LIMIT);
  if (ret < 0)
   break;

  ret = DIV_ROUND_CLOSEST(ret * 293, 6140);
  break;
 default:
  ret = lm25066_read_word_data(client, page, reg);
  break;
 }
 return ret;
}
