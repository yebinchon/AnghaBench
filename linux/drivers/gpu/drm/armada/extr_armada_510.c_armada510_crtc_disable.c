
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_crtc {int * clk; } ;


 int clk_disable_unprepare (int *) ;

__attribute__((used)) static void armada510_crtc_disable(struct armada_crtc *dcrtc)
{
 if (dcrtc->clk) {
  clk_disable_unprepare(dcrtc->clk);
  dcrtc->clk = ((void*)0);
 }
}
