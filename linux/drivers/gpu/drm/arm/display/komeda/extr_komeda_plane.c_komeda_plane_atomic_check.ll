; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32 }
%struct.komeda_plane = type { %struct.komeda_layer* }
%struct.komeda_layer = type { i32 }
%struct.komeda_plane_state = type { i32 }
%struct.drm_crtc_state = type { i32, i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"Cannot update plane on a disabled CRTC.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @komeda_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.komeda_plane*, align 8
  %7 = alloca %struct.komeda_plane_state*, align 8
  %8 = alloca %struct.komeda_layer*, align 8
  %9 = alloca %struct.drm_crtc_state*, align 8
  %10 = alloca %struct.komeda_crtc_state*, align 8
  %11 = alloca %struct.komeda_data_flow_cfg, align 8
  %12 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %14 = call %struct.komeda_plane* @to_kplane(%struct.drm_plane* %13)
  store %struct.komeda_plane* %14, %struct.komeda_plane** %6, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = call %struct.komeda_plane_state* @to_kplane_st(%struct.drm_plane_state* %15)
  store %struct.komeda_plane_state* %16, %struct.komeda_plane_state** %7, align 8
  %17 = load %struct.komeda_plane*, %struct.komeda_plane** %6, align 8
  %18 = getelementptr inbounds %struct.komeda_plane, %struct.komeda_plane* %17, i32 0, i32 0
  %19 = load %struct.komeda_layer*, %struct.komeda_layer** %18, align 8
  store %struct.komeda_layer* %19, %struct.komeda_layer** %8, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %82

30:                                               ; preds = %24
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %33, i32 %36)
  store %struct.drm_crtc_state* %37, %struct.drm_crtc_state** %9, align 8
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %39 = call i64 @IS_ERR(%struct.drm_crtc_state* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %43 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41, %30
  %47 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %41
  %51 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %52 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %82

56:                                               ; preds = %50
  %57 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %9, align 8
  %58 = call %struct.komeda_crtc_state* @to_kcrtc_st(%struct.drm_crtc_state* %57)
  store %struct.komeda_crtc_state* %58, %struct.komeda_crtc_state** %10, align 8
  %59 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %60 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %10, align 8
  %61 = call i32 @komeda_plane_init_data_flow(%struct.drm_plane_state* %59, %struct.komeda_crtc_state* %60, %struct.komeda_data_flow_cfg* %11)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %3, align 4
  br label %82

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.komeda_layer*, %struct.komeda_layer** %8, align 8
  %72 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %73 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %10, align 8
  %74 = call i32 @komeda_build_layer_split_data_flow(%struct.komeda_layer* %71, %struct.komeda_plane_state* %72, %struct.komeda_crtc_state* %73, %struct.komeda_data_flow_cfg* %11)
  store i32 %74, i32* %12, align 4
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.komeda_layer*, %struct.komeda_layer** %8, align 8
  %77 = load %struct.komeda_plane_state*, %struct.komeda_plane_state** %7, align 8
  %78 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %10, align 8
  %79 = call i32 @komeda_build_layer_data_flow(%struct.komeda_layer* %76, %struct.komeda_plane_state* %77, %struct.komeda_crtc_state* %78, %struct.komeda_data_flow_cfg* %11)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %64, %55, %46, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.komeda_plane* @to_kplane(%struct.drm_plane*) #1

declare dso_local %struct.komeda_plane_state* @to_kplane_st(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*) #1

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(%struct.drm_crtc_state*) #1

declare dso_local i32 @komeda_plane_init_data_flow(%struct.drm_plane_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_build_layer_split_data_flow(%struct.komeda_layer*, %struct.komeda_plane_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_build_layer_data_flow(%struct.komeda_layer*, %struct.komeda_plane_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
