
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_i2c_bus {int num; struct hfi1_devdata* controlling_dd; } ;
struct hfi1_devdata {int dummy; } ;


 int QSFP_HFI0_I2CDAT ;
 int i2c_oe_csr (int ) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static void hfi1_setsda(void *data, int state)
{
 struct hfi1_i2c_bus *bus = (struct hfi1_i2c_bus *)data;
 struct hfi1_devdata *dd = bus->controlling_dd;
 u64 reg;
 u32 target_oe;

 target_oe = i2c_oe_csr(bus->num);
 reg = read_csr(dd, target_oe);






 if (state)
  reg &= ~QSFP_HFI0_I2CDAT;
 else
  reg |= QSFP_HFI0_I2CDAT;
 write_csr(dd, target_oe, reg);

 (void)read_csr(dd, target_oe);
}
