
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t B ;
 int EGRET_TACK_ASSERTED_DELAY ;
 int TACK ;
 int in_8 (int *) ;
 scalar_t__ mcu_is_egret ;
 int out_8 (int *,int) ;
 int udelay (int ) ;
 int * via ;

__attribute__((used)) static inline void negate_TACK(void)
{
 if (mcu_is_egret) {
  udelay(EGRET_TACK_ASSERTED_DELAY);
  out_8(&via[B], in_8(&via[B]) & ~TACK);
 } else
  out_8(&via[B], in_8(&via[B]) | TACK);
}
