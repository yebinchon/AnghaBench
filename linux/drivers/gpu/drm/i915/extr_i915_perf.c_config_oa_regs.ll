; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_config_oa_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_config_oa_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_oa_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_oa_reg*, i64)* @config_oa_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_oa_regs(%struct.drm_i915_private* %0, %struct.i915_oa_reg* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_oa_reg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i915_oa_reg*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.i915_oa_reg* %1, %struct.i915_oa_reg** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.i915_oa_reg*, %struct.i915_oa_reg** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.i915_oa_reg, %struct.i915_oa_reg* %14, i64 %15
  store %struct.i915_oa_reg* %16, %struct.i915_oa_reg** %8, align 8
  %17 = load %struct.i915_oa_reg*, %struct.i915_oa_reg** %8, align 8
  %18 = getelementptr inbounds %struct.i915_oa_reg, %struct.i915_oa_reg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.i915_oa_reg*, %struct.i915_oa_reg** %8, align 8
  %21 = getelementptr inbounds %struct.i915_oa_reg, %struct.i915_oa_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @I915_WRITE(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
