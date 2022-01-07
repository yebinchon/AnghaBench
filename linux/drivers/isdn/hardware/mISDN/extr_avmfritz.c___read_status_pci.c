
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u32 ;


 int AVM_HDLC_1 ;
 int AVM_HDLC_2 ;
 scalar_t__ CHIP_INDEX ;
 scalar_t__ CHIP_WINDOW ;
 scalar_t__ HDLC_STATUS ;
 int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline u32
__read_status_pci(u_long addr, u32 channel)
{
 outl(channel == 2 ? AVM_HDLC_2 : AVM_HDLC_1, addr + CHIP_INDEX);
 return inl(addr + CHIP_WINDOW + HDLC_STATUS);
}
