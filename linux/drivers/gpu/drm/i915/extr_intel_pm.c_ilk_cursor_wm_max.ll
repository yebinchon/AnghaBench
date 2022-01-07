; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_cursor_wm_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_cursor_wm_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_wm_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, %struct.intel_wm_config*)* @ilk_cursor_wm_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_cursor_wm_max(%struct.drm_i915_private* %0, i32 %1, %struct.intel_wm_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_wm_config*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_wm_config* %2, %struct.intel_wm_config** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.intel_wm_config*, %struct.intel_wm_config** %7, align 8
  %12 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 64, i32* %4, align 4
  br label %20

16:                                               ; preds = %10, %3
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ilk_cursor_wm_reg_max(%struct.drm_i915_private* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @ilk_cursor_wm_reg_max(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
