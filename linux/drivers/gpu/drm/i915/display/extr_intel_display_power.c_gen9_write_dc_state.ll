; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_gen9_write_dc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_gen9_write_dc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DC_STATE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Writing dc state to 0x%x failed, now 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Rewrote dc state to 0x%x %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i64)* @gen9_write_dc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen9_write_dc_state(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @DC_STATE_EN, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @I915_WRITE(i32 %8, i64 %9)
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* @DC_STATE_EN, align 4
  %13 = call i64 @I915_READ(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* @DC_STATE_EN, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @I915_WRITE(i32 %18, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %29

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = icmp sgt i32 %24, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %11, label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i64) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
