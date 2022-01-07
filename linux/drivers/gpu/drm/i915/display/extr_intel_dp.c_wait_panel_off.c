
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int IDLE_OFF_MASK ;
 int IDLE_OFF_VALUE ;
 int wait_panel_status (struct intel_dp*,int ,int ) ;

__attribute__((used)) static void wait_panel_off(struct intel_dp *intel_dp)
{
 DRM_DEBUG_KMS("Wait for panel power off time\n");
 wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
}
