; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_layer_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_layer_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32 }
%struct.komeda_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_plane* }
%struct.drm_plane = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [80 x i8] c"%s handling [PLANE:%d:%s]: src[x/y:%d/%d, w/h:%d/%d] disp[x/y:%d/%d, w/h:%d/%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_build_layer_data_flow(%struct.komeda_layer* %0, %struct.komeda_plane_state* %1, %struct.komeda_crtc_state* %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_layer*, align 8
  %7 = alloca %struct.komeda_plane_state*, align 8
  %8 = alloca %struct.komeda_crtc_state*, align 8
  %9 = alloca %struct.komeda_data_flow_cfg*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca %struct.komeda_pipeline*, align 8
  %12 = alloca i32, align 4
  store %struct.komeda_layer* %0, %struct.komeda_layer** %6, align 8
  store %struct.komeda_plane_state* %1, %struct.komeda_plane_state** %7, align 8
  store %struct.komeda_crtc_state* %2, %struct.komeda_crtc_state** %8, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %9, align 8
  %13 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %14 = getelementptr inbounds %struct.komeda_plane_state, %struct.komeda_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_plane*, %struct.drm_plane** %15, align 8
  store %struct.drm_plane* %16, %struct.drm_plane** %10, align 8
  %17 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %18 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %19, align 8
  store %struct.komeda_pipeline* %20, %struct.komeda_pipeline** %11, align 8
  %21 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %22 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %33 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %36 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %39 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %42 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %45 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %48 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %51 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %54 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.komeda_layer*, %struct.komeda_layer** %6, align 8
  %58 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %59 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %60 = call i32 @komeda_layer_validate(%struct.komeda_layer* %57, %struct.komeda_plane_state* %58, %struct.komeda_data_flow_cfg* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %4
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %93

65:                                               ; preds = %4
  %66 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %67 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %68 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %69 = call i32 @komeda_scaler_validate(%struct.drm_plane* %66, %struct.komeda_crtc_state* %67, %struct.komeda_data_flow_cfg* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %93

74:                                               ; preds = %65
  %75 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %76 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %11, align 8
  %81 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %82 = call i64 @merger_is_available(%struct.komeda_pipeline* %80, %struct.komeda_data_flow_cfg* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %93

85:                                               ; preds = %79, %74
  %86 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %11, align 8
  %87 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %90 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %91 = call i32 @komeda_compiz_set_input(i32 %88, %struct.komeda_crtc_state* %89, %struct.komeda_data_flow_cfg* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %84, %72, %63
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @komeda_layer_validate(%struct.komeda_layer*, %struct.komeda_plane_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_scaler_validate(%struct.drm_plane*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i64 @merger_is_available(%struct.komeda_pipeline*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_compiz_set_input(i32, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
