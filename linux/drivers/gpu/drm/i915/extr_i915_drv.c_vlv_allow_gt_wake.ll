; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_allow_gt_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_allow_gt_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@VLV_GTLC_WAKE_CTRL = common dso_local global i32 0, align 4
@VLV_GTLC_ALLOWWAKEREQ = common dso_local global i32 0, align 4
@VLV_GTLC_ALLOWWAKEACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"timeout disabling GT waking\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @vlv_allow_gt_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_allow_gt_wake(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @VLV_GTLC_ALLOWWAKEREQ, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @VLV_GTLC_ALLOWWAKEREQ, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %25 = call i32 @POSTING_READ(i32 %24)
  %26 = load i32, i32* @VLV_GTLC_ALLOWWAKEACK, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  store i32 %33, i32* %6, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @vlv_wait_for_pw_status(%struct.drm_i915_private* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @vlv_wait_for_pw_status(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
