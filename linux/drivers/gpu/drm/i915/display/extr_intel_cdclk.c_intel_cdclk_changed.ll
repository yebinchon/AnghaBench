; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_cdclk_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_cdclk_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_cdclk_state = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_cdclk_changed(%struct.intel_cdclk_state* %0, %struct.intel_cdclk_state* %1) #0 {
  %3 = alloca %struct.intel_cdclk_state*, align 8
  %4 = alloca %struct.intel_cdclk_state*, align 8
  store %struct.intel_cdclk_state* %0, %struct.intel_cdclk_state** %3, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %4, align 8
  %5 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %6 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %7 = call i64 @intel_cdclk_needs_modeset(%struct.intel_cdclk_state* %5, %struct.intel_cdclk_state* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %3, align 8
  %11 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i1 [ true, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @intel_cdclk_needs_modeset(%struct.intel_cdclk_state*, %struct.intel_cdclk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
