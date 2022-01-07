; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }
%struct.amdgpu_crtc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Mode too big for LB!\0A\00", align 1
@mmLB_MEMORY_CTRL = common dso_local global i32 0, align 4
@LB_MEMORY_CTRL__LB_MEMORY_CONFIG__SHIFT = common dso_local global i32 0, align 4
@LB_MEMORY_CTRL__LB_MEMORY_SIZE__SHIFT = common dso_local global i32 0, align 4
@mmPIPE0_DMIF_BUFFER_CONTROL = common dso_local global i32 0, align 4
@PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT = common dso_local global i32 0, align 4
@PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_crtc*, %struct.drm_display_mode*)* @dce_v8_0_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_line_buffer_adjust(%struct.amdgpu_device* %0, %struct.amdgpu_crtc* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_crtc*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_crtc* %1, %struct.amdgpu_crtc** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %12 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %3
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %23 = icmp ne %struct.drm_display_mode* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 1920
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 2560
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 2, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %61

36:                                               ; preds = %30
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 4096
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AMD_IS_APU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 2, i32 4
  store i32 %49, i32* %9, align 4
  br label %60

50:                                               ; preds = %36
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AMD_IS_APU, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2, i32 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %29
  br label %64

63:                                               ; preds = %21, %3
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* @mmLB_MEMORY_CTRL, align 4
  %66 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @LB_MEMORY_CTRL__LB_MEMORY_CONFIG__SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* @LB_MEMORY_CTRL__LB_MEMORY_SIZE__SHIFT, align 4
  %74 = shl i32 1712, %73
  %75 = or i32 %72, %74
  %76 = call i32 @WREG32(i32 %69, i32 %75)
  %77 = load i32, i32* @mmPIPE0_DMIF_BUFFER_CONTROL, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = call i32 @WREG32(i32 %79, i32 %82)
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %101, %64
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load i32, i32* @mmPIPE0_DMIF_BUFFER_CONTROL, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @RREG32(i32 %93)
  %95 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %104

99:                                               ; preds = %90
  %100 = call i32 @udelay(i32 1)
  br label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %84

104:                                              ; preds = %98, %84
  %105 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %106 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %112 = icmp ne %struct.drm_display_mode* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %117
    i32 2, label %118
  ]

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %113, %115
  store i32 8192, i32* %4, align 4
  br label %120

117:                                              ; preds = %113
  store i32 3840, i32* %4, align 4
  br label %120

118:                                              ; preds = %113
  store i32 5120, i32* %4, align 4
  br label %120

119:                                              ; preds = %110, %104
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %118, %117, %116
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
