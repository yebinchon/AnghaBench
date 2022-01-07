; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cursor_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_cursor_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@PLANE_CURSOR = common dso_local global i32 0, align 4
@i845_cursor_max_stride = common dso_local global i32 0, align 4
@i845_update_cursor = common dso_local global i32 0, align 4
@i845_disable_cursor = common dso_local global i32 0, align 4
@i845_cursor_get_hw_state = common dso_local global i32 0, align 4
@i845_check_cursor = common dso_local global i32 0, align 4
@i9xx_cursor_max_stride = common dso_local global i32 0, align 4
@i9xx_update_cursor = common dso_local global i32 0, align 4
@i9xx_disable_cursor = common dso_local global i32 0, align 4
@i9xx_cursor_get_hw_state = common dso_local global i32 0, align 4
@i9xx_check_cursor = common dso_local global i32 0, align 4
@intel_cursor_plane_funcs = common dso_local global i32 0, align 4
@intel_cursor_formats = common dso_local global i32 0, align 4
@cursor_format_modifiers = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cursor %c\00", align 1
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@intel_plane_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_plane* (%struct.drm_i915_private*, i32)* @intel_cursor_plane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_plane* @intel_cursor_plane_create(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_plane*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_plane*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.intel_plane* (...) @intel_plane_alloc()
  store %struct.intel_plane* %9, %struct.intel_plane** %7, align 8
  %10 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %11 = call i64 @IS_ERR(%struct.intel_plane* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  store %struct.intel_plane* %14, %struct.intel_plane** %3, align 8
  br label %134

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %21 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @PLANE_CURSOR, align 4
  %23 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %24 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %27 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @INTEL_FRONTBUFFER(i32 %25, i32 %28)
  %30 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %31 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = call i64 @IS_I845G(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %15
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = call i64 @IS_I865G(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35, %15
  %40 = load i32, i32* @i845_cursor_max_stride, align 4
  %41 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @i845_update_cursor, align 4
  %44 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %45 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @i845_disable_cursor, align 4
  %47 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %48 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @i845_cursor_get_hw_state, align 4
  %50 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %51 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @i845_check_cursor, align 4
  %53 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %54 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  br label %71

55:                                               ; preds = %35
  %56 = load i32, i32* @i9xx_cursor_max_stride, align 4
  %57 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %58 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @i9xx_update_cursor, align 4
  %60 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %61 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @i9xx_disable_cursor, align 4
  %63 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %64 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @i9xx_cursor_get_hw_state, align 4
  %66 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %67 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @i9xx_check_cursor, align 4
  %69 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %70 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %55, %39
  %72 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %73 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 4
  %75 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %76 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %79 = call i64 @IS_I845G(%struct.drm_i915_private* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %71
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %83 = call i64 @IS_I865G(%struct.drm_i915_private* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %87 = call i64 @HAS_CUR_FBC(%struct.drm_i915_private* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %81, %71
  %90 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %91 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 -1, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @BIT(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %99 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %98, i32 0, i32 2
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @intel_cursor_formats, align 4
  %102 = load i32, i32* @intel_cursor_formats, align 4
  %103 = call i32 @ARRAY_SIZE(i32 %102)
  %104 = load i32, i32* @cursor_format_modifiers, align 4
  %105 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @pipe_name(i32 %106)
  %108 = call i32 @drm_universal_plane_init(i32* %97, i32* %99, i32 %100, i32* @intel_cursor_plane_funcs, i32 %101, i32 %103, i32 %104, i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %129

112:                                              ; preds = %93
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %114 = call i32 @INTEL_GEN(%struct.drm_i915_private* %113)
  %115 = icmp sge i32 %114, 4
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %118 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %117, i32 0, i32 2
  %119 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %120 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %121 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @drm_plane_create_rotation_property(i32* %118, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %116, %112
  %125 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %126 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %125, i32 0, i32 2
  %127 = call i32 @drm_plane_helper_add(i32* %126, i32* @intel_plane_helper_funcs)
  %128 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  store %struct.intel_plane* %128, %struct.intel_plane** %3, align 8
  br label %134

129:                                              ; preds = %111
  %130 = load %struct.intel_plane*, %struct.intel_plane** %7, align 8
  %131 = call i32 @intel_plane_free(%struct.intel_plane* %130)
  %132 = load i32, i32* %8, align 4
  %133 = call %struct.intel_plane* @ERR_PTR(i32 %132)
  store %struct.intel_plane* %133, %struct.intel_plane** %3, align 8
  br label %134

134:                                              ; preds = %129, %124, %13
  %135 = load %struct.intel_plane*, %struct.intel_plane** %3, align 8
  ret %struct.intel_plane* %135
}

declare dso_local %struct.intel_plane* @intel_plane_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.intel_plane*) #1

declare dso_local i32 @INTEL_FRONTBUFFER(i32, i32) #1

declare dso_local i64 @IS_I845G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I865G(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_CUR_FBC(%struct.drm_i915_private*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_universal_plane_init(i32*, i32*, i32, i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_plane_create_rotation_property(i32*, i32, i32) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @intel_plane_free(%struct.intel_plane*) #1

declare dso_local %struct.intel_plane* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
