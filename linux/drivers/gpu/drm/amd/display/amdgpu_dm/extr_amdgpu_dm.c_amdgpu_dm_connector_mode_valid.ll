; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.dc_sink = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.dc_sink*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MODE_ERROR = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"dc_sink is NULL!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create stream for sink!\0A\00", align 1
@MODE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Mode %dx%d (clk %d) failed DC validation with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_sink*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.dc_stream_state*, align 8
  %10 = alloca %struct.amdgpu_dm_connector*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load i32, i32* @MODE_ERROR, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %8, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %18)
  store %struct.amdgpu_dm_connector* %19, %struct.amdgpu_dm_connector** %10, align 8
  %20 = load i32, i32* @DC_OK, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %2
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %27
  %37 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %38 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %45 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %50 = call i32 @handle_edid_mgmt(%struct.amdgpu_dm_connector* %49)
  br label %51

51:                                               ; preds = %48, %43, %36
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %52)
  %54 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %53, i32 0, i32 0
  %55 = load %struct.dc_sink*, %struct.dc_sink** %54, align 8
  store %struct.dc_sink* %55, %struct.dc_sink** %7, align 8
  %56 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %57 = icmp eq %struct.dc_sink* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %95

60:                                               ; preds = %51
  %61 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %63 = call %struct.dc_stream_state* @create_stream_for_sink(%struct.amdgpu_dm_connector* %61, %struct.drm_display_mode* %62, i32* null, i32* null)
  store %struct.dc_stream_state* %63, %struct.dc_stream_state** %9, align 8
  %64 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %65 = icmp eq %struct.dc_stream_state* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %95

68:                                               ; preds = %60
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %74 = call i32 @dc_validate_stream(i32 %72, %struct.dc_stream_state* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @DC_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @MODE_OK, align 4
  store i32 %79, i32* %6, align 4
  br label %92

80:                                               ; preds = %68
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %80, %78
  %93 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %94 = call i32 @dc_stream_release(%struct.dc_stream_state* %93)
  br label %95

95:                                               ; preds = %92, %66, %58
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %34
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local i32 @handle_edid_mgmt(%struct.amdgpu_dm_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.dc_stream_state* @create_stream_for_sink(%struct.amdgpu_dm_connector*, %struct.drm_display_mode*, i32*, i32*) #1

declare dso_local i32 @dc_validate_stream(i32, %struct.dc_stream_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dc_stream_release(%struct.dc_stream_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
