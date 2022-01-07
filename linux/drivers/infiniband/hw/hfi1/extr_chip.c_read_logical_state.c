
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int DCC_CFG_PORT_CONFIG ;
 int DCC_CFG_PORT_CONFIG_LINK_STATE_MASK ;
 int DCC_CFG_PORT_CONFIG_LINK_STATE_SHIFT ;
 int read_csr (struct hfi1_devdata*,int ) ;

u32 read_logical_state(struct hfi1_devdata *dd)
{
 u64 reg;

 reg = read_csr(dd, DCC_CFG_PORT_CONFIG);
 return (reg >> DCC_CFG_PORT_CONFIG_LINK_STATE_SHIFT)
    & DCC_CFG_PORT_CONFIG_LINK_STATE_MASK;
}
