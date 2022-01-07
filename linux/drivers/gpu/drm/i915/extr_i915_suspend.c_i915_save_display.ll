; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@DSPARB = common dso_local global i32 0, align 4
@FBC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i915_save_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_save_display(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @INTEL_GEN(%struct.drm_i915_private* %3)
  %5 = icmp sle i32 %4, 4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* @DSPARB, align 4
  %8 = call i8* @I915_READ(i32 %7)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i8* %8, i8** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = call i64 @HAS_FBC(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sle i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = call i32 @IS_G4X(%struct.drm_i915_private* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FBC_CONTROL, align 4
  %26 = call i8* @I915_READ(i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  br label %30

30:                                               ; preds = %24, %20, %16, %12
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i64 @HAS_FBC(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_G4X(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
