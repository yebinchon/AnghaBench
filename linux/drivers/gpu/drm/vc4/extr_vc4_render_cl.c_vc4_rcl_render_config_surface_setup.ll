; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_rcl_render_config_surface_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_rcl_render_config_surface_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { %struct.TYPE_2__*, i32, %struct.drm_gem_cma_object** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vc4_rcl_setup = type { i32 }
%struct.drm_gem_cma_object = type { i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i64, i32, i32 }

@VC4_RENDER_CONFIG_MEMORY_FORMAT = common dso_local global i32 0, align 4
@VC4_RENDER_CONFIG_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No flags supported on render config.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VC4_RENDER_CONFIG_MEMORY_FORMAT_MASK = common dso_local global i32 0, align 4
@VC4_RENDER_CONFIG_FORMAT_MASK = common dso_local global i32 0, align 4
@VC4_RENDER_CONFIG_MS_MODE_4X = common dso_local global i32 0, align 4
@VC4_RENDER_CONFIG_DECIMATE_MODE_4X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unknown bits in render config: 0x%04x\0A\00", align 1
@VC4_TILING_FORMAT_LT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad tiling format\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Bad tile buffer format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_exec_info*, %struct.vc4_rcl_setup*, %struct.drm_gem_cma_object**, %struct.drm_vc4_submit_rcl_surface*)* @vc4_rcl_render_config_surface_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_rcl_render_config_surface_setup(%struct.vc4_exec_info* %0, %struct.vc4_rcl_setup* %1, %struct.drm_gem_cma_object** %2, %struct.drm_vc4_submit_rcl_surface* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc4_exec_info*, align 8
  %7 = alloca %struct.vc4_rcl_setup*, align 8
  %8 = alloca %struct.drm_gem_cma_object**, align 8
  %9 = alloca %struct.drm_vc4_submit_rcl_surface*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %6, align 8
  store %struct.vc4_rcl_setup* %1, %struct.vc4_rcl_setup** %7, align 8
  store %struct.drm_gem_cma_object** %2, %struct.drm_gem_cma_object*** %8, align 8
  store %struct.drm_vc4_submit_rcl_surface* %3, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %13 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %14 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VC4_RENDER_CONFIG_MEMORY_FORMAT, align 4
  %17 = call i64 @VC4_GET_FIELD(i32 %15, i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %19 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VC4_RENDER_CONFIG_FORMAT, align 4
  %22 = call i64 @VC4_GET_FIELD(i32 %20, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %24 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %123

31:                                               ; preds = %4
  %32 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %33 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VC4_RENDER_CONFIG_MEMORY_FORMAT_MASK, align 4
  %36 = load i32, i32* @VC4_RENDER_CONFIG_FORMAT_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VC4_RENDER_CONFIG_MS_MODE_4X, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @VC4_RENDER_CONFIG_DECIMATE_MODE_4X, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %34, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %47 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %123

52:                                               ; preds = %31
  %53 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %54 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %123

58:                                               ; preds = %52
  %59 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %60 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %61 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info* %59, i32 %62)
  %64 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %8, align 8
  store %struct.drm_gem_cma_object* %63, %struct.drm_gem_cma_object** %64, align 8
  %65 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %8, align 8
  %66 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %65, align 8
  %67 = icmp ne %struct.drm_gem_cma_object* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %123

71:                                               ; preds = %58
  %72 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %8, align 8
  %73 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %72, align 8
  %74 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %75 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %74, i32 0, i32 2
  %76 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %75, align 8
  %77 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %78 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %76, i64 %81
  store %struct.drm_gem_cma_object* %73, %struct.drm_gem_cma_object** %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @VC4_TILING_FORMAT_LT, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %123

90:                                               ; preds = %71
  %91 = load i64, i64* %11, align 8
  switch i64 %91, label %94 [
    i64 129, label %92
    i64 130, label %92
    i64 128, label %93
  ]

92:                                               ; preds = %90, %90
  store i32 2, i32* %12, align 4
  br label %98

93:                                               ; preds = %90
  store i32 4, i32* %12, align 4
  br label %98

94:                                               ; preds = %90
  %95 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %123

98:                                               ; preds = %93, %92
  %99 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %100 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %8, align 8
  %101 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %100, align 8
  %102 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %9, align 8
  %103 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %107 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %112 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @vc4_check_tex_size(%struct.vc4_exec_info* %99, %struct.drm_gem_cma_object* %101, i32 %104, i64 %105, i32 %110, i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %98
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %123

122:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %119, %94, %86, %68, %57, %45, %27
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @VC4_GET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info*, i32) #1

declare dso_local i32 @vc4_check_tex_size(%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
