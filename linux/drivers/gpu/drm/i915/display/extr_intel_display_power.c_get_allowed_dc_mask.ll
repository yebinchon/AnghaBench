; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_get_allowed_dc_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_get_allowed_dc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DC_STATE_EN_DC9 = common dso_local global i32 0, align 4
@i915_modparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [43 x i8] c"Adjusting requested max DC state (%d->%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unexpected value for enable_dc (%d)\0A\00", align 1
@DC_STATE_EN_UPTO_DC6 = common dso_local global i32 0, align 4
@DC_STATE_EN_UPTO_DC5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Allowed DC state mask %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @get_allowed_dc_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_allowed_dc_mask(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp sge i32 %9, 11
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  %12 = load i32, i32* @DC_STATE_EN_DC9, align 4
  store i32 %12, i32* %5, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @IS_GEN(%struct.drm_i915_private* %14, i32 10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i32 2, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %30

22:                                               ; preds = %17
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  %27 = load i32, i32* @DC_STATE_EN_DC9, align 4
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %26
  br label %30

30:                                               ; preds = %29, %21
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @i915_modparams, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %6, align 4
  br label %67

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %6, align 4
  br label %66

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %53, %49
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @DC_STATE_EN_UPTO_DC6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @DC_STATE_EN_UPTO_DC5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
