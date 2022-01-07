; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_crc.c_amdgpu_dm_crtc_configure_crc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_crc.c_amdgpu_dm_crtc_configure_crc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dm_crtc_state = type { %struct.dc_stream_state* }
%struct.dc_stream_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DITHER_OPTION_TRUN8 = common dso_local global i32 0, align 4
@DITHER_OPTION_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dm_crtc_configure_crc_source(%struct.drm_crtc* %0, %struct.dm_crtc_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.dm_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.dc_stream_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.dm_crtc_state* %1, %struct.dm_crtc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %8, align 8
  %17 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %6, align 8
  %18 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %17, i32 0, i32 0
  %19 = load %struct.dc_stream_state*, %struct.dc_stream_state** %18, align 8
  store %struct.dc_stream_state* %19, %struct.dc_stream_state** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @amdgpu_dm_is_valid_crc_source(i32 %20)
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %23 = icmp ne %struct.dc_stream_state* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

25:                                               ; preds = %3
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @dm_is_crc_source_crtc(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %35 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dc_stream_configure_crc(i32 %38, %struct.dc_stream_state* %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %61

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dm_need_crc_dither(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %54 = load i32, i32* @DITHER_OPTION_TRUN8, align 4
  %55 = call i32 @dc_stream_set_dither_option(%struct.dc_stream_state* %53, i32 %54)
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %58 = load i32, i32* @DITHER_OPTION_DEFAULT, align 4
  %59 = call i32 @dc_stream_set_dither_option(%struct.dc_stream_state* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @amdgpu_dm_is_valid_crc_source(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dm_is_crc_source_crtc(i32) #1

declare dso_local i32 @dc_stream_configure_crc(i32, %struct.dc_stream_state*, i32, i32) #1

declare dso_local i32 @dm_need_crc_dither(i32) #1

declare dso_local i32 @dc_stream_set_dither_option(%struct.dc_stream_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
