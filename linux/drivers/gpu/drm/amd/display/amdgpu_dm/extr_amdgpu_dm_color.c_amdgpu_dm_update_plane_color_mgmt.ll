; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c_amdgpu_dm_update_plane_color_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_color.c_amdgpu_dm_update_plane_color_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crtc_state = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dc_plane_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.drm_color_lut = type { i32 }

@MAX_COLOR_LUT_ENTRIES = common dso_local global i64 0, align 8
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_SRGB = common dso_local global i8* null, align 8
@TRANSFER_FUNCTION_LINEAR = common dso_local global i8* null, align 8
@TF_TYPE_PREDEFINED = common dso_local global i32 0, align 4
@TF_TYPE_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_update_plane_color_mgmt(%struct.dm_crtc_state* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_crtc_state*, align 8
  %5 = alloca %struct.dc_plane_state*, align 8
  %6 = alloca %struct.drm_color_lut*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dm_crtc_state* %0, %struct.dm_crtc_state** %4, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %5, align 8
  %9 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %10 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %15 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_color_lut* @__extract_blob_lut(i32 %17, i64* %7)
  store %struct.drm_color_lut* %18, %struct.drm_color_lut** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MAX_COLOR_LUT_ENTRIES, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* @TF_TYPE_DISTRIBUTED_POINTS, align 4
  %25 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 8
  %29 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %30 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %13
  %34 = load i8*, i8** @TRANSFER_FUNCTION_SRGB, align 8
  %35 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %36 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  br label %45

39:                                               ; preds = %13
  %40 = load i8*, i8** @TRANSFER_FUNCTION_LINEAR, align 8
  %41 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %47 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.drm_color_lut*, %struct.drm_color_lut** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @__set_input_tf(%struct.TYPE_4__* %48, %struct.drm_color_lut* %49, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %86

56:                                               ; preds = %45
  br label %85

57:                                               ; preds = %2
  %58 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %59 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* @TF_TYPE_PREDEFINED, align 4
  %64 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %65 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 8
  %68 = load i8*, i8** @TRANSFER_FUNCTION_SRGB, align 8
  %69 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %70 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  br label %84

73:                                               ; preds = %57
  %74 = load i32, i32* @TF_TYPE_BYPASS, align 4
  %75 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %76 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load i8*, i8** @TRANSFER_FUNCTION_LINEAR, align 8
  %80 = load %struct.dc_plane_state*, %struct.dc_plane_state** %5, align 8
  %81 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %79, i8** %83, align 8
  br label %84

84:                                               ; preds = %73, %62
  br label %85

85:                                               ; preds = %84, %56
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %54
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.drm_color_lut* @__extract_blob_lut(i32, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @__set_input_tf(%struct.TYPE_4__*, %struct.drm_color_lut*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
