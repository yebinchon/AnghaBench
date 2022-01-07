; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_plane_dcc_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_fill_plane_dcc_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.dc.0*, %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap*)* }
%struct.dc.0 = type opaque
%struct.dc_surface_dcc_cap = type { i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.amdgpu_framebuffer = type { i32 }
%struct.plane_size = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%union.dc_tiling_info = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.dc_plane_dcc_param = type { i32, i64, i64 }
%struct.dc_plane_address = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.dc_dcc_surface_param = type { i32, %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_11__ }

@DCC_OFFSET_256B = common dso_local global i32 0, align 4
@DCC_INDEPENDENT_64B = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT_VIDEO_BEGIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ROTATION_ANGLE_0 = common dso_local global i32 0, align 4
@ROTATION_ANGLE_180 = common dso_local global i32 0, align 4
@SCAN_DIRECTION_HORIZONTAL = common dso_local global i32 0, align 4
@ROTATION_ANGLE_90 = common dso_local global i32 0, align 4
@ROTATION_ANGLE_270 = common dso_local global i32 0, align 4
@SCAN_DIRECTION_VERTICAL = common dso_local global i32 0, align 4
@DCC_PITCH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_framebuffer*, i32, i32, %struct.plane_size*, %union.dc_tiling_info*, i32, %struct.dc_plane_dcc_param*, %struct.dc_plane_address*)* @fill_plane_dcc_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_plane_dcc_attributes(%struct.amdgpu_device* %0, %struct.amdgpu_framebuffer* %1, i32 %2, i32 %3, %struct.plane_size* %4, %union.dc_tiling_info* %5, i32 %6, %struct.dc_plane_dcc_param* %7, %struct.dc_plane_address* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %struct.amdgpu_framebuffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.plane_size*, align 8
  %16 = alloca %union.dc_tiling_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dc_plane_dcc_param*, align 8
  %19 = alloca %struct.dc_plane_address*, align 8
  %20 = alloca %struct.dc*, align 8
  %21 = alloca %struct.dc_dcc_surface_param, align 8
  %22 = alloca %struct.dc_surface_dcc_cap, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_framebuffer* %1, %struct.amdgpu_framebuffer** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.plane_size* %4, %struct.plane_size** %15, align 8
  store %union.dc_tiling_info* %5, %union.dc_tiling_info** %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.dc_plane_dcc_param* %7, %struct.dc_plane_dcc_param** %18, align 8
  store %struct.dc_plane_address* %8, %struct.dc_plane_address** %19, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.dc*, %struct.dc** %28, align 8
  store %struct.dc* %29, %struct.dc** %20, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @DCC_OFFSET_256B, align 4
  %32 = call i64 @AMDGPU_TILING_GET(i32 %30, i32 %31)
  store i64 %32, i64* %23, align 8
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @DCC_INDEPENDENT_64B, align 4
  %35 = call i64 @AMDGPU_TILING_GET(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %24, align 8
  %39 = bitcast %struct.dc_dcc_surface_param* %21 to %struct.dc_surface_dcc_cap*
  %40 = call i32 @memset(%struct.dc_surface_dcc_cap* %39, i32 0, i32 40)
  %41 = call i32 @memset(%struct.dc_surface_dcc_cap* %22, i32 0, i32 40)
  %42 = load i64, i64* %23, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %162

45:                                               ; preds = %9
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @SURFACE_PIXEL_FORMAT_VIDEO_BEGIN, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %162

50:                                               ; preds = %45
  %51 = load %struct.dc*, %struct.dc** %20, align 8
  %52 = getelementptr inbounds %struct.dc, %struct.dc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dc.0*, %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap*)*, i32 (%struct.dc.0*, %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap*)** %53, align 8
  %55 = icmp ne i32 (%struct.dc.0*, %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap*)* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %162

59:                                               ; preds = %50
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %21, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.plane_size*, %struct.plane_size** %15, align 8
  %63 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %21, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.plane_size*, %struct.plane_size** %15, align 8
  %69 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %21, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %union.dc_tiling_info*, %union.dc_tiling_info** %16, align 8
  %75 = bitcast %union.dc_tiling_info* %74 to %struct.TYPE_13__*
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %21, i32 0, i32 4
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @ROTATION_ANGLE_0, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @ROTATION_ANGLE_180, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %59
  %87 = load i32, i32* @SCAN_DIRECTION_HORIZONTAL, align 4
  %88 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %21, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  br label %101

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @ROTATION_ANGLE_90, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @ROTATION_ANGLE_270, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @SCAN_DIRECTION_VERTICAL, align 4
  %99 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %21, i32 0, i32 3
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %100, %86
  %102 = load %struct.dc*, %struct.dc** %20, align 8
  %103 = getelementptr inbounds %struct.dc, %struct.dc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32 (%struct.dc.0*, %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap*)*, i32 (%struct.dc.0*, %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap*)** %104, align 8
  %106 = load %struct.dc*, %struct.dc** %20, align 8
  %107 = bitcast %struct.dc* %106 to %struct.dc.0*
  %108 = bitcast %struct.dc_dcc_surface_param* %21 to %struct.dc_surface_dcc_cap*
  %109 = call i32 %105(%struct.dc.0* %107, %struct.dc_surface_dcc_cap* %108, %struct.dc_surface_dcc_cap* %22)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %162

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %22, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %162

121:                                              ; preds = %114
  %122 = load i64, i64* %24, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %22, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %10, align 4
  br label %162

133:                                              ; preds = %124, %121
  %134 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %18, align 8
  %135 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @DCC_PITCH_MAX, align 4
  %138 = call i64 @AMDGPU_TILING_GET(i32 %136, i32 %137)
  %139 = add nsw i64 %138, 1
  %140 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %18, align 8
  %141 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %24, align 8
  %143 = load %struct.dc_plane_dcc_param*, %struct.dc_plane_dcc_param** %18, align 8
  %144 = getelementptr inbounds %struct.dc_plane_dcc_param, %struct.dc_plane_dcc_param* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.amdgpu_framebuffer*, %struct.amdgpu_framebuffer** %12, align 8
  %146 = getelementptr inbounds %struct.amdgpu_framebuffer, %struct.amdgpu_framebuffer* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @get_dcc_address(i32 %147, i32 %148)
  store i32 %149, i32* %25, align 4
  %150 = load i32, i32* %25, align 4
  %151 = call i32 @lower_32_bits(i32 %150)
  %152 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %153 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %25, align 4
  %157 = call i32 @upper_32_bits(i32 %156)
  %158 = load %struct.dc_plane_address*, %struct.dc_plane_address** %19, align 8
  %159 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 4
  store i32 0, i32* %10, align 4
  br label %162

162:                                              ; preds = %133, %130, %118, %111, %56, %49, %44
  %163 = load i32, i32* %10, align 4
  ret i32 %163
}

declare dso_local i64 @AMDGPU_TILING_GET(i32, i32) #1

declare dso_local i32 @memset(%struct.dc_surface_dcc_cap*, i32, i32) #1

declare dso_local i32 @get_dcc_address(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
