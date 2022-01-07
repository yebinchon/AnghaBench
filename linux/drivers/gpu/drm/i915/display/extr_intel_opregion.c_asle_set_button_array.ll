; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_asle_set_button_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_asle_set_button_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Button array event is not supported (nothing)\0A\00", align 1
@ASLE_IUER_ROTATION_LOCK_BTN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Button array event is not supported (rotation lock)\0A\00", align 1
@ASLE_IUER_VOLUME_DOWN_BTN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Button array event is not supported (volume down)\0A\00", align 1
@ASLE_IUER_VOLUME_UP_BTN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Button array event is not supported (volume up)\0A\00", align 1
@ASLE_IUER_WINDOWS_BTN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Button array event is not supported (windows)\0A\00", align 1
@ASLE_IUER_POWER_BTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Button array event is not supported (power)\0A\00", align 1
@ASLC_BUTTON_ARRAY_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @asle_set_button_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asle_set_button_array(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ASLE_IUER_ROTATION_LOCK_BTN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ASLE_IUER_VOLUME_DOWN_BTN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ASLE_IUER_VOLUME_UP_BTN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ASLE_IUER_WINDOWS_BTN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ASLE_IUER_POWER_BTN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* @ASLC_BUTTON_ARRAY_FAILED, align 4
  ret i32 %45
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
