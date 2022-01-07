; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64 }
%struct.amdgpu_crtc = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Mode too big for LB!\0A\00", align 1
@mmLB_MEMORY_CTRL = common dso_local global i64 0, align 8
@LB_MEMORY_CTRL = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG = common dso_local global i32 0, align 4
@mmPIPE0_DMIF_BUFFER_CONTROL = common dso_local global i64 0, align 8
@PIPE0_DMIF_BUFFER_CONTROL = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATED = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATION_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amdgpu_device*, %struct.amdgpu_crtc*, %struct.drm_display_mode*)* @dce_v11_0_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dce_v11_0_line_buffer_adjust(%struct.amdgpu_device* %0, %struct.amdgpu_crtc* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_crtc*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_crtc* %1, %struct.amdgpu_crtc** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %13 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %3
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %23 = icmp ne %struct.drm_display_mode* %22, null
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 1920
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i64 1, i64* %11, align 8
  store i64 2, i64* %9, align 8
  br label %64

30:                                               ; preds = %24
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 2560
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i64 2, i64* %11, align 8
  store i64 2, i64* %9, align 8
  br label %63

36:                                               ; preds = %30
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 4096
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  store i64 0, i64* %11, align 8
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AMD_IS_APU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2, i32 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  br label %62

51:                                               ; preds = %36
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AMD_IS_APU, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 2, i32 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %51, %41
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %29
  br label %66

65:                                               ; preds = %21, %3
  store i64 1, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i64, i64* @mmLB_MEMORY_CTRL, align 8
  %68 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %69 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i64 @RREG32(i64 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* @LB_MEMORY_CTRL, align 4
  %75 = load i32, i32* @LB_MEMORY_CONFIG, align 4
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @REG_SET_FIELD(i64 %73, i32 %74, i32 %75, i64 %76)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* @mmLB_MEMORY_CTRL, align 8
  %79 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %80 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @WREG32(i64 %82, i64 %83)
  %85 = load i64, i64* @mmPIPE0_DMIF_BUFFER_CONTROL, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i64 @RREG32(i64 %87)
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL, align 4
  %91 = load i32, i32* @DMIF_BUFFERS_ALLOCATED, align 4
  %92 = load i64, i64* %9, align 8
  %93 = call i64 @REG_SET_FIELD(i64 %89, i32 %90, i32 %91, i64 %92)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* @mmPIPE0_DMIF_BUFFER_CONTROL, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @WREG32(i64 %96, i64 %97)
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %118, %66
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load i64, i64* @mmPIPE0_DMIF_BUFFER_CONTROL, align 8
  %107 = load i64, i64* %12, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i64 @RREG32(i64 %108)
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL, align 4
  %112 = load i32, i32* @DMIF_BUFFERS_ALLOCATION_COMPLETED, align 4
  %113 = call i64 @REG_GET_FIELD(i64 %110, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %121

116:                                              ; preds = %105
  %117 = call i32 @udelay(i32 1)
  br label %118

118:                                              ; preds = %116
  %119 = load i64, i64* %10, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %99

121:                                              ; preds = %115, %99
  %122 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %123 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %129 = icmp ne %struct.drm_display_mode* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i64, i64* %11, align 8
  switch i64 %131, label %133 [
    i64 0, label %132
    i64 1, label %134
    i64 2, label %135
  ]

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %130, %132
  store i64 8192, i64* %4, align 8
  br label %137

134:                                              ; preds = %130
  store i64 3840, i64* %4, align 8
  br label %137

135:                                              ; preds = %130
  store i64 5120, i64* %4, align 8
  br label %137

136:                                              ; preds = %127, %121
  store i64 0, i64* %4, align 8
  br label %137

137:                                              ; preds = %136, %135, %134, %133
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @RREG32(i64) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i64) #1

declare dso_local i32 @WREG32(i64, i64) #1

declare dso_local i64 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
