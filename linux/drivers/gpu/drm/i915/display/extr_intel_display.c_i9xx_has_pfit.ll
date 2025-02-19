; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_has_pfit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_has_pfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @i9xx_has_pfit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_has_pfit(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %5 = call i64 @IS_I830(%struct.drm_i915_private* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i32 @INTEL_GEN(%struct.drm_i915_private* %9)
  %11 = icmp sge i32 %10, 4
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i64 @IS_MOBILE(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %12, %8
  %21 = phi i1 [ true, %12 ], [ true, %8 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
