; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_input_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_input_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_dtd = type { i32 }

@SDVO_CMD_GET_INPUT_TIMINGS_PART1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_dtd*)* @intel_sdvo_get_input_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_input_timing(%struct.intel_sdvo* %0, %struct.intel_sdvo_dtd* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.intel_sdvo_dtd*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.intel_sdvo_dtd* %1, %struct.intel_sdvo_dtd** %4, align 8
  %5 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %6 = load i32, i32* @SDVO_CMD_GET_INPUT_TIMINGS_PART1, align 4
  %7 = load %struct.intel_sdvo_dtd*, %struct.intel_sdvo_dtd** %4, align 8
  %8 = call i32 @intel_sdvo_get_timing(%struct.intel_sdvo* %5, i32 %6, %struct.intel_sdvo_dtd* %7)
  ret i32 %8
}

declare dso_local i32 @intel_sdvo_get_timing(%struct.intel_sdvo*, i32, %struct.intel_sdvo_dtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
