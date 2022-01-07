; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_set_tv_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_set_tv_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_sdvo_tv_format = type { i32 }

@SDVO_CMD_SET_TV_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.drm_connector_state*)* @intel_sdvo_set_tv_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_set_tv_format(%struct.intel_sdvo* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_sdvo_tv_format, align 4
  %6 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = call i32 @memset(%struct.intel_sdvo_tv_format* %5, i32 0, i32 4)
  %13 = call i32 @min(i32 4, i32 4)
  %14 = call i32 @memcpy(%struct.intel_sdvo_tv_format* %5, i32* %6, i32 %13)
  %15 = call i32 @BUILD_BUG_ON(i32 1)
  %16 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %17 = load i32, i32* @SDVO_CMD_SET_TV_FORMAT, align 4
  %18 = call i32 @intel_sdvo_set_value(%struct.intel_sdvo* %16, i32 %17, %struct.intel_sdvo_tv_format* %5, i32 4)
  ret i32 %18
}

declare dso_local i32 @memset(%struct.intel_sdvo_tv_format*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.intel_sdvo_tv_format*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_sdvo_set_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_tv_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
