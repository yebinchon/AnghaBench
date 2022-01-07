; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_display_manager = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.drm_plane** }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.drm_plane = type { i64, i32, %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_18__*)* }
%struct.amdgpu_crtc = type { i64, i32, %struct.TYPE_18__, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@amdgpu_dm_crtc_funcs = common dso_local global i32 0, align 4
@amdgpu_dm_crtc_helper_funcs = common dso_local global i32 0, align 4
@MAX_COLOR_LUT_ENTRIES = common dso_local global i32 0, align 4
@MAX_COLOR_LEGACY_LUT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_display_manager*, %struct.drm_plane*, i64)* @amdgpu_dm_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_crtc_init(%struct.amdgpu_display_manager* %0, %struct.drm_plane* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_display_manager*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amdgpu_crtc*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_display_manager* %0, %struct.amdgpu_display_manager** %5, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.amdgpu_crtc* null, %struct.amdgpu_crtc** %8, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.drm_plane* @kzalloc(i32 48, i32 %13)
  store %struct.drm_plane* %14, %struct.drm_plane** %9, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %16 = icmp ne %struct.drm_plane* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %114

18:                                               ; preds = %3
  %19 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %20 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %5, align 8
  %23 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %24 = call i32 @amdgpu_dm_plane_init(%struct.amdgpu_display_manager* %22, %struct.drm_plane* %23, i32 0, i32* null)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.drm_plane* @kzalloc(i32 48, i32 %25)
  %27 = bitcast %struct.drm_plane* %26 to %struct.amdgpu_crtc*
  store %struct.amdgpu_crtc* %27, %struct.amdgpu_crtc** %8, align 8
  %28 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %29 = icmp ne %struct.amdgpu_crtc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %114

31:                                               ; preds = %18
  %32 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %35, i32 0, i32 2
  %37 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %38 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %39 = call i32 @drm_crtc_init_with_planes(i32 %34, %struct.TYPE_18__* %36, %struct.drm_plane* %37, %struct.drm_plane* %38, i32* @amdgpu_dm_crtc_funcs, i32* null)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %114

43:                                               ; preds = %31
  %44 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %45 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %44, i32 0, i32 2
  %46 = call i32 @drm_crtc_helper_add(%struct.TYPE_18__* %45, i32* @amdgpu_dm_crtc_helper_funcs)
  %47 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %48 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_18__*)* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %56 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %59, align 8
  %61 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %62 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %61, i32 0, i32 2
  %63 = call i32 %60(%struct.TYPE_18__* %62)
  br label %64

64:                                               ; preds = %54, %43
  %65 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %5, align 8
  %66 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %65, i32 0, i32 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %75 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %76, i32 0, i32 0
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %86 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %89 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %91 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 8
  %95 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %96 = bitcast %struct.amdgpu_crtc* %95 to %struct.drm_plane*
  %97 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %5, align 8
  %98 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.drm_plane**, %struct.drm_plane*** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %102, i64 %103
  store %struct.drm_plane* %96, %struct.drm_plane** %104, align 8
  %105 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %106 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %105, i32 0, i32 2
  %107 = load i32, i32* @MAX_COLOR_LUT_ENTRIES, align 4
  %108 = load i32, i32* @MAX_COLOR_LUT_ENTRIES, align 4
  %109 = call i32 @drm_crtc_enable_color_mgmt(%struct.TYPE_18__* %106, i32 %107, i32 1, i32 %108)
  %110 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %111 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %110, i32 0, i32 2
  %112 = load i32, i32* @MAX_COLOR_LEGACY_LUT_ENTRIES, align 4
  %113 = call i32 @drm_mode_crtc_set_gamma_size(%struct.TYPE_18__* %111, i32 %112)
  store i32 0, i32* %4, align 4
  br label %121

114:                                              ; preds = %42, %30, %17
  %115 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %8, align 8
  %116 = bitcast %struct.amdgpu_crtc* %115 to %struct.drm_plane*
  %117 = call i32 @kfree(%struct.drm_plane* %116)
  %118 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %119 = call i32 @kfree(%struct.drm_plane* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %114, %64
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_dm_plane_init(%struct.amdgpu_display_manager*, %struct.drm_plane*, i32, i32*) #1

declare dso_local i32 @drm_crtc_init_with_planes(i32, %struct.TYPE_18__*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @drm_crtc_enable_color_mgmt(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
