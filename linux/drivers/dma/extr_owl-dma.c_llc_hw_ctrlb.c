
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT_FIELD (int ,int,int ,int) ;

__attribute__((used)) static inline u32 llc_hw_ctrlb(u32 int_ctl)
{
 u32 ctl;

 ctl = BIT_FIELD(int_ctl, 7, 0, 18);

 return ctl;
}
