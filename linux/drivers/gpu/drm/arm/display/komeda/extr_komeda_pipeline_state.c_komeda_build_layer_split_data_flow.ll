; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_layer_split_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_layer_split_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { %struct.TYPE_6__, %struct.komeda_layer* }
%struct.TYPE_6__ = type { i32, %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32, i32, i32* }
%struct.komeda_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_plane* }
%struct.drm_plane = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [86 x i8] c"Assign %s + %s to [PLANE:%d:%s]: src[x/y:%d/%d, w/h:%d/%d] disp[x/y:%d/%d, w/h:%d/%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_build_layer_split_data_flow(%struct.komeda_layer* %0, %struct.komeda_plane_state* %1, %struct.komeda_crtc_state* %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_layer*, align 8
  %7 = alloca %struct.komeda_plane_state*, align 8
  %8 = alloca %struct.komeda_crtc_state*, align 8
  %9 = alloca %struct.komeda_data_flow_cfg*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca %struct.komeda_pipeline*, align 8
  %12 = alloca %struct.komeda_layer*, align 8
  %13 = alloca %struct.komeda_data_flow_cfg, align 8
  %14 = alloca %struct.komeda_data_flow_cfg, align 8
  %15 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %6, align 8
  store %struct.komeda_plane_state* %1, %struct.komeda_plane_state** %7, align 8
  store %struct.komeda_crtc_state* %2, %struct.komeda_crtc_state** %8, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %9, align 8
  %16 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %17 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_plane*, %struct.drm_plane** %18, align 8
  store %struct.drm_plane* %19, %struct.drm_plane** %10, align 8
  %20 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %21 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %22, align 8
  store %struct.komeda_pipeline* %23, %struct.komeda_pipeline** %11, align 8
  %24 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %25 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %24, i32 0, i32 1
  %26 = load %struct.komeda_layer*, %struct.komeda_layer** %25, align 8
  store %struct.komeda_layer* %26, %struct.komeda_layer** %12, align 8
  %27 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %11, align 8
  %28 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %33 = call i32 @komeda_split_data_flow(i32 %31, %struct.komeda_data_flow_cfg* %32, %struct.komeda_data_flow_cfg* %13, %struct.komeda_data_flow_cfg* %14)
  %34 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %35 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.komeda_layer*, %struct.komeda_layer** %12, align 8
  %39 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %43 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %47 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %50 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %53 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %56 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %59 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %62 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %65 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %68 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %71 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %75 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %76 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %77 = call i32 @komeda_build_layer_data_flow(%struct.komeda_layer* %74, %struct.komeda_plane_state* %75, %struct.komeda_crtc_state* %76, %struct.komeda_data_flow_cfg* %13)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %4
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %5, align 4
  br label %125

82:                                               ; preds = %4
  %83 = load %struct.komeda_layer*, %struct.komeda_layer** %12, align 8
  %84 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %85 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %86 = call i32 @komeda_build_layer_data_flow(%struct.komeda_layer* %83, %struct.komeda_plane_state* %84, %struct.komeda_crtc_state* %85, %struct.komeda_data_flow_cfg* %14)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %5, align 4
  br label %125

91:                                               ; preds = %82
  %92 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %93 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %94 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @komeda_rotate_data_flow(%struct.komeda_data_flow_cfg* %92, i32 %95)
  %97 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %14, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %13, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %125

105:                                              ; preds = %91
  %106 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %11, align 8
  %107 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %110 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %111 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %112 = call i32 @komeda_merger_validate(i32 %108, %struct.drm_plane* %109, %struct.komeda_crtc_state* %110, %struct.komeda_data_flow_cfg* %13, %struct.komeda_data_flow_cfg* %14, %struct.komeda_data_flow_cfg* %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %5, align 4
  br label %125

117:                                              ; preds = %105
  %118 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %11, align 8
  %119 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %122 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %123 = call i32 @komeda_compiz_set_input(i32 %120, %struct.komeda_crtc_state* %121, %struct.komeda_data_flow_cfg* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %117, %115, %104, %89, %80
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @komeda_split_data_flow(i32, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @komeda_build_layer_data_flow(%struct.komeda_layer*, %struct.komeda_plane_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_rotate_data_flow(%struct.komeda_data_flow_cfg*, i32) #1

declare dso_local i32 @komeda_merger_validate(i32, %struct.drm_plane*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_compiz_set_input(i32, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
