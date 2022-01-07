; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_dump_cdclk_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_dump_cdclk_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_cdclk_state = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dump_cdclk_state(%struct.intel_cdclk_state* %0, i8* %1) #0 {
  %3 = alloca %struct.intel_cdclk_state*, align 8
  %4 = alloca i8*, align 8
  store %struct.intel_cdclk_state* %0, %struct.intel_cdclk_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %7 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %10 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %16 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %8, i32 %11, i32 %14, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
