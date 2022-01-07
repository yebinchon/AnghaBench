; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_res = type { i32, i64 }
%struct.drm_connector = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.tv_mode = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@input_res_table = common dso_local global %struct.input_res* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"TV mode:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_tv_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.tv_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_res*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tv_mode* @intel_tv_mode_find(i32 %15)
  store %struct.tv_mode* %16, %struct.tv_mode** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %98, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.input_res*, %struct.input_res** @input_res_table, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.input_res* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  %23 = load %struct.input_res*, %struct.input_res** @input_res_table, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.input_res, %struct.input_res* %23, i64 %25
  store %struct.input_res* %26, %struct.input_res** %7, align 8
  %27 = load %struct.input_res*, %struct.input_res** %7, align 8
  %28 = getelementptr inbounds %struct.input_res, %struct.input_res* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1024
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %33 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %38 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %98

42:                                               ; preds = %36, %31, %22
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call i64 @IS_GEN(%struct.drm_i915_private* %43, i32 3)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load %struct.input_res*, %struct.input_res** %7, align 8
  %48 = getelementptr inbounds %struct.input_res, %struct.input_res* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 1024
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.input_res*, %struct.input_res** %7, align 8
  %53 = getelementptr inbounds %struct.input_res, %struct.input_res* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %56 = call i64 @intel_tv_mode_vdisplay(%struct.tv_mode* %55)
  %57 = icmp sgt i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %98

59:                                               ; preds = %51, %46, %42
  %60 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.drm_display_mode* @drm_mode_create(i32 %62)
  store %struct.drm_display_mode* %63, %struct.drm_display_mode** %8, align 8
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %65 = icmp ne %struct.drm_display_mode* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %98

67:                                               ; preds = %59
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %69 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %70 = call i32 @intel_tv_mode_to_mode(%struct.drm_display_mode* %68, %struct.tv_mode* %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %76 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %79 = load %struct.input_res*, %struct.input_res** %7, align 8
  %80 = getelementptr inbounds %struct.input_res, %struct.input_res* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @intel_tv_scale_mode_horiz(%struct.drm_display_mode* %78, i32 %81, i32 0, i32 0)
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %84 = load %struct.input_res*, %struct.input_res** %7, align 8
  %85 = getelementptr inbounds %struct.input_res, %struct.input_res* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @intel_tv_scale_mode_vert(%struct.drm_display_mode* %83, i64 %86, i32 0, i32 0)
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %89 = load %struct.tv_mode*, %struct.tv_mode** %4, align 8
  %90 = call i32 @intel_tv_set_mode_type(%struct.drm_display_mode* %88, %struct.tv_mode* %89)
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %92 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %91)
  %93 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %95 = call i32 @drm_mode_probed_add(%struct.drm_connector* %93, %struct.drm_display_mode* %94)
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %77, %66, %58, %41
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %17

101:                                              ; preds = %17
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.input_res*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_tv_mode_vdisplay(%struct.tv_mode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @intel_tv_mode_to_mode(%struct.drm_display_mode*, %struct.tv_mode*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @intel_tv_scale_mode_horiz(%struct.drm_display_mode*, i32, i32, i32) #1

declare dso_local i32 @intel_tv_scale_mode_vert(%struct.drm_display_mode*, i64, i32, i32) #1

declare dso_local i32 @intel_tv_set_mode_type(%struct.drm_display_mode*, %struct.tv_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
