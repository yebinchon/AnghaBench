
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int dummy; } ;


 int wait_for_pipe_scanline_moving (struct intel_crtc*,int) ;

__attribute__((used)) static void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
{
 wait_for_pipe_scanline_moving(crtc, 1);
}
