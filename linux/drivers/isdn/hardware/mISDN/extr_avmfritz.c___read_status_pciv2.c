
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u32 ;


 scalar_t__ AVM_HDLC_STATUS_1 ;
 scalar_t__ AVM_HDLC_STATUS_2 ;
 int inl (scalar_t__) ;

__attribute__((used)) static inline u32
__read_status_pciv2(u_long addr, u32 channel)
{
 return inl(addr + (channel == 2 ? AVM_HDLC_STATUS_2 :
      AVM_HDLC_STATUS_1));
}
