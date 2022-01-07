; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_display.c_get_edp_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_display.c_get_edp_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@_TRANS_DDI_FUNC_CTL_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_MASK = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*)* @get_edp_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_edp_pipe(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %5 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %6 = load i32, i32* @_TRANS_DDI_FUNC_CTL_EDP, align 4
  %7 = call i32 @vgpu_vreg(%struct.intel_vgpu* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TRANS_DDI_EDP_INPUT_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %17 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %13
    i32 128, label %15
  ]

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @PIPE_A, align 4
  store i32 %12, i32* %4, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @PIPE_B, align 4
  store i32 %14, i32* %4, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PIPE_C, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %1, %15, %13, %11
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @vgpu_vreg(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
