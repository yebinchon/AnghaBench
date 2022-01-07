
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_piix4_adapdata {int port; scalar_t__ smba; } ;
struct i2c_adapter {int port; scalar_t__ smba; } ;


 int SMBIOSIZE ;
 int i2c_del_adapter (struct i2c_piix4_adapdata*) ;
 struct i2c_piix4_adapdata* i2c_get_adapdata (struct i2c_piix4_adapdata*) ;
 int kfree (struct i2c_piix4_adapdata*) ;
 int piix4_port_shift_sb800 ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void piix4_adap_remove(struct i2c_adapter *adap)
{
 struct i2c_piix4_adapdata *adapdata = i2c_get_adapdata(adap);

 if (adapdata->smba) {
  i2c_del_adapter(adap);
  if (adapdata->port == (0 << piix4_port_shift_sb800))
   release_region(adapdata->smba, SMBIOSIZE);
  kfree(adapdata);
  kfree(adap);
 }
}
