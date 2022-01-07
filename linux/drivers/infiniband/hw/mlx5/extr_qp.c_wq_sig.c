
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int calc_sig (void*,int) ;

__attribute__((used)) static u8 wq_sig(void *wqe)
{
 return calc_sig(wqe, (*((u8 *)wqe + 8) & 0x3f) << 4);
}
