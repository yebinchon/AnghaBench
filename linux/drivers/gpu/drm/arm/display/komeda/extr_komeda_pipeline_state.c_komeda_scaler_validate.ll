; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_scaler_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_scaler_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i64, %struct.TYPE_5__, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_scaler_state = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.komeda_scaler = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"No scaler available\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_scaler_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_scaler_validate(i8* %0, %struct.komeda_crtc_state* %1, %struct.komeda_data_flow_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.komeda_crtc_state*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.drm_atomic_state*, align 8
  %9 = alloca %struct.komeda_component_state*, align 8
  %10 = alloca %struct.komeda_scaler_state*, align 8
  %11 = alloca %struct.komeda_scaler*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  %13 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %14 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %15, align 8
  store %struct.drm_atomic_state* %16, %struct.drm_atomic_state** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %18 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %23 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %152

27:                                               ; preds = %21, %3
  %28 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %29 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %33 = call %struct.komeda_scaler* @komeda_component_get_avail_scaler(i32 %31, %struct.drm_atomic_state* %32)
  store %struct.komeda_scaler* %33, %struct.komeda_scaler** %11, align 8
  %34 = load %struct.komeda_scaler*, %struct.komeda_scaler** %11, align 8
  %35 = icmp ne %struct.komeda_scaler* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %152

40:                                               ; preds = %27
  %41 = load %struct.komeda_scaler*, %struct.komeda_scaler** %11, align 8
  %42 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %43 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %44 = call i32 @komeda_scaler_check_cfg(%struct.komeda_scaler* %41, %struct.komeda_crtc_state* %42, %struct.komeda_data_flow_cfg* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %152

49:                                               ; preds = %40
  %50 = load %struct.komeda_scaler*, %struct.komeda_scaler** %11, align 8
  %51 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %50, i32 0, i32 0
  %52 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %8, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %6, align 8
  %55 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %51, %struct.drm_atomic_state* %52, i8* %53, i32 %57)
  store %struct.komeda_component_state* %58, %struct.komeda_component_state** %9, align 8
  %59 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %60 = call i64 @IS_ERR(%struct.komeda_component_state* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %64 = call i32 @PTR_ERR(%struct.komeda_component_state* %63)
  store i32 %64, i32* %4, align 4
  br label %152

65:                                               ; preds = %49
  %66 = load %struct.komeda_component_state*, %struct.komeda_component_state** %9, align 8
  %67 = call %struct.komeda_scaler_state* @to_scaler_st(%struct.komeda_component_state* %66)
  store %struct.komeda_scaler_state* %67, %struct.komeda_scaler_state** %10, align 8
  %68 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %69 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %68, i32 0, i32 14
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %72 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 8
  %73 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %77 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 4
  %78 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %79 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %82 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %81, i32 0, i32 12
  store i32 %80, i32* %82, align 8
  %83 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %84 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %87 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 4
  %88 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %89 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %92 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 8
  %93 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %94 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %97 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 4
  %98 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %99 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %102 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 8
  %103 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %104 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %107 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  %108 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %109 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %112 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %114 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @DRM_MODE_BLEND_PIXEL_NONE, align 8
  %117 = icmp ne i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %120 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %122 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %125 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %127 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %130 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %132 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %135 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %137 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %140 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.komeda_scaler_state*, %struct.komeda_scaler_state** %10, align 8
  %142 = getelementptr inbounds %struct.komeda_scaler_state, %struct.komeda_scaler_state* %141, i32 0, i32 1
  %143 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %144 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %143, i32 0, i32 1
  %145 = call i32 @komeda_component_add_input(i32* %142, %struct.TYPE_5__* %144, i32 0)
  %146 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %147 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %146, i32 0, i32 1
  %148 = load %struct.komeda_scaler*, %struct.komeda_scaler** %11, align 8
  %149 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %148, i32 0, i32 0
  %150 = call i32 @komeda_component_set_output(%struct.TYPE_5__* %147, i32* %149, i32 0)
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %65, %62, %47, %36, %26
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.komeda_scaler* @komeda_component_get_avail_scaler(i32, %struct.drm_atomic_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*) #1

declare dso_local i32 @komeda_scaler_check_cfg(%struct.komeda_scaler*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, %struct.drm_atomic_state*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_scaler_state* @to_scaler_st(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_component_add_input(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @komeda_component_set_output(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
