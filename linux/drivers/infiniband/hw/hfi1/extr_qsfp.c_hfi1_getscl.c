
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_i2c_bus {int controlling_dd; int num; } ;


 int QSFP_HFI0_I2CCLK ;
 int hfi1_setscl (void*,int) ;
 int i2c_in_csr (int ) ;
 int read_csr (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int hfi1_getscl(void *data)
{
 struct hfi1_i2c_bus *bus = (struct hfi1_i2c_bus *)data;
 u64 reg;
 u32 target_in;

 hfi1_setscl(data, 1);
 udelay(2);

 target_in = i2c_in_csr(bus->num);
 reg = read_csr(bus->controlling_dd, target_in);
 return !!(reg & QSFP_HFI0_I2CCLK);
}
