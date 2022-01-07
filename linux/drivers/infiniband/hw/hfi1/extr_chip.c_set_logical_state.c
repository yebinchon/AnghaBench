
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int DCC_CFG_PORT_CONFIG ;
 int DCC_CFG_PORT_CONFIG_LINK_STATE_SHIFT ;
 int DCC_CFG_PORT_CONFIG_LINK_STATE_SMASK ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void set_logical_state(struct hfi1_devdata *dd, u32 chip_lstate)
{
 u64 reg;

 reg = read_csr(dd, DCC_CFG_PORT_CONFIG);

 reg &= ~DCC_CFG_PORT_CONFIG_LINK_STATE_SMASK;
 reg |= (u64)chip_lstate << DCC_CFG_PORT_CONFIG_LINK_STATE_SHIFT;
 write_csr(dd, DCC_CFG_PORT_CONFIG, reg);
}
