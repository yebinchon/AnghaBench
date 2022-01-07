
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {int dummy; } ;


 int PSC_CTRL ;
 int PSC_CTRL_DISABLE ;
 int PSC_SMBCFG ;
 int WR (struct i2c_au1550_data*,int ,int ) ;

__attribute__((used)) static void i2c_au1550_disable(struct i2c_au1550_data *priv)
{
 WR(priv, PSC_SMBCFG, 0);
 WR(priv, PSC_CTRL, PSC_CTRL_DISABLE);
}
