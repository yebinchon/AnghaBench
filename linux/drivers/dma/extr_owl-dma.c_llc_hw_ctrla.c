
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT_FIELD (int,int,int,int) ;

__attribute__((used)) static inline u32 llc_hw_ctrla(u32 mode, u32 llc_ctl)
{
 u32 ctl;

 ctl = BIT_FIELD(mode, 4, 28, 28) |
       BIT_FIELD(mode, 8, 16, 20) |
       BIT_FIELD(mode, 4, 8, 16) |
       BIT_FIELD(mode, 6, 0, 10) |
       BIT_FIELD(llc_ctl, 2, 10, 8) |
       BIT_FIELD(llc_ctl, 2, 8, 6);

 return ctl;
}
