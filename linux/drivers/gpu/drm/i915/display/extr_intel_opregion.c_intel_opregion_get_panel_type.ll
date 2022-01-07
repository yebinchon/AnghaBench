; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_get_panel_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_get_panel_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SWSCI_GBDA_PANEL_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to get panel details from OpRegion (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid OpRegion panel type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No panel type in OpRegion\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@intel_use_opregion_panel_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Ignoring OpRegion panel type (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_opregion_get_panel_type(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* @SWSCI_GBDA_PANEL_DETAILS, align 4
  %8 = call i32 @swsci(%struct.drm_i915_private* %6, i32 %7, i32 0, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 16
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %26
  %34 = load i32, i32* @intel_use_opregion_panel_type, align 4
  %35 = call i32 @dmi_check_system(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %37, %29, %21, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @swsci(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @dmi_check_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
