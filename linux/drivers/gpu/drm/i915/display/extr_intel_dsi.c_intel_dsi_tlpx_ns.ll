; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi.c_intel_dsi_tlpx_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi.c_intel_dsi_tlpx_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dsi_tlpx_ns(%struct.intel_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dsi*, align 8
  store %struct.intel_dsi* %0, %struct.intel_dsi** %3, align 8
  %4 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %5 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %1, %7
  store i32 50, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  store i32 100, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 200, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9, %8
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
