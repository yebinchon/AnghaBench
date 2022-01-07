
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int DC_DC8051_STS_CUR_STATE ;
 int DC_DC8051_STS_CUR_STATE_FIRMWARE_MASK ;
 int DC_DC8051_STS_CUR_STATE_FIRMWARE_SHIFT ;
 int read_csr (struct hfi1_devdata*,int ) ;

__attribute__((used)) static inline u32 get_firmware_state(struct hfi1_devdata *dd)
{
 u64 reg = read_csr(dd, DC_DC8051_STS_CUR_STATE);

 return (reg >> DC_DC8051_STS_CUR_STATE_FIRMWARE_SHIFT)
    & DC_DC8051_STS_CUR_STATE_FIRMWARE_MASK;
}
