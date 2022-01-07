; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_hw_sequencer.c_dce120_enable_display_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_hw_sequencer.c_dce120_enable_display_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dc_bios*, i32, i32)* }

@ASIC_PIPE_DISABLE = common dso_local global i32 0, align 4
@ASIC_PIPE_ENABLE = common dso_local global i32 0, align 4
@ASIC_PIPE_INIT = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_ENABLE = common dso_local global i32 0, align 4
@PIPE_GATING_CONTROL_INIT = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_MASTER_UPDATE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, i32, %struct.dc_bios*, i32)* @dce120_enable_display_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce120_enable_display_power_gating(%struct.dc* %0, i32 %1, %struct.dc_bios* %2, i32 %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dc_bios* %2, %struct.dc_bios** %7, align 8
  store i32 %3, i32* %8, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
