; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_wa_827.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_wa_827.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DUPS1_GATING_DIS = common dso_local global i32 0, align 4
@DUPS2_GATING_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32)* @skl_wa_827 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_wa_827(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @CLKGATE_DIS_PSL(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @CLKGATE_DIS_PSL(i32 %12)
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @DUPS1_GATING_DIS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DUPS2_GATING_DIS, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @I915_WRITE(i32 %11, i32 %18)
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @CLKGATE_DIS_PSL(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @CLKGATE_DIS_PSL(i32 %23)
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @DUPS1_GATING_DIS, align 4
  %27 = load i32, i32* @DUPS2_GATING_DIS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = call i32 @I915_WRITE(i32 %22, i32 %30)
  br label %32

32:                                               ; preds = %20, %9
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CLKGATE_DIS_PSL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
