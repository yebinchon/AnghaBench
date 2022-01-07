
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int DC_DC8051_STS_CUR_STATE ;
 int DC_DC8051_STS_CUR_STATE_PORT_MASK ;
 int DC_DC8051_STS_CUR_STATE_PORT_SHIFT ;
 int read_csr (struct hfi1_devdata*,int ) ;

u32 read_physical_state(struct hfi1_devdata *dd)
{
 u64 reg;

 reg = read_csr(dd, DC_DC8051_STS_CUR_STATE);
 return (reg >> DC_DC8051_STS_CUR_STATE_PORT_SHIFT)
    & DC_DC8051_STS_CUR_STATE_PORT_MASK;
}
