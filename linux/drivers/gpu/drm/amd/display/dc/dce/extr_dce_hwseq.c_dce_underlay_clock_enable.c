
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;


 int DCFEV_CLOCK_CONTROL ;
 int DCFEV_CLOCK_ENABLE ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void dce_underlay_clock_enable(struct dce_hwseq *hws)
{

 if (REG(DCFEV_CLOCK_CONTROL))
  REG_UPDATE(DCFEV_CLOCK_CONTROL,
    DCFEV_CLOCK_ENABLE, 1);
}
