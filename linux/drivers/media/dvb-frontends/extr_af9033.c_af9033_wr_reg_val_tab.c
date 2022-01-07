
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct reg_val {int reg; int val; } ;
struct i2c_client {int dev; } ;
struct af9033_dev {int regmap; struct i2c_client* client; } ;
typedef int buf ;


 int EINVAL ;
 int MAX_TAB_LEN ;
 int dev_dbg (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int regmap_bulk_write (int ,int,int *,int) ;

__attribute__((used)) static int af9033_wr_reg_val_tab(struct af9033_dev *dev,
     const struct reg_val *tab, int tab_len)
{
 struct i2c_client *client = dev->client;

 int ret, i, j;
 u8 buf[1 + 212];

 dev_dbg(&client->dev, "tab_len=%d\n", tab_len);

 if (tab_len > sizeof(buf)) {
  dev_warn(&client->dev, "tab len %d is too big\n", tab_len);
  return -EINVAL;
 }

 for (i = 0, j = 0; i < tab_len; i++) {
  buf[j] = tab[i].val;

  if (i == tab_len - 1 || tab[i].reg != tab[i + 1].reg - 1) {
   ret = regmap_bulk_write(dev->regmap, tab[i].reg - j,
      buf, j + 1);
   if (ret)
    goto err;

   j = 0;
  } else {
   j++;
  }
 }

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
