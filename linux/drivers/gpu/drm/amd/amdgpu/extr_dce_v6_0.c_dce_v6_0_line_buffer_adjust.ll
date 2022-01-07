; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }
%struct.amdgpu_crtc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@mmDC_LB_MEMORY_SPLIT = common dso_local global i64 0, align 8
@mmPIPE0_DMIF_BUFFER_CONTROL = common dso_local global i64 0, align 8
@PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT = common dso_local global i64 0, align 8
@PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.amdgpu_device*, %struct.amdgpu_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dce_v6_0_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dce_v6_0_line_buffer_adjust(%struct.amdgpu_device* %0, %struct.amdgpu_crtc* %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_crtc* %1, %struct.amdgpu_crtc** %7, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %9, align 8
  %14 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %26 = icmp ne %struct.drm_display_mode* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %29 = icmp ne %struct.drm_display_mode* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  store i64 1, i64* %11, align 8
  br label %32

31:                                               ; preds = %27
  store i64 2, i64* %10, align 8
  store i64 2, i64* %11, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %34

33:                                               ; preds = %24, %4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i64, i64* @mmDC_LB_MEMORY_SPLIT, align 8
  %36 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @DC_LB_MEMORY_CONFIG(i64 %40)
  %42 = call i32 @WREG32(i64 %39, i64 %41)
  %43 = load i64, i64* @mmPIPE0_DMIF_BUFFER_CONTROL, align 8
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = call i32 @WREG32(i64 %45, i64 %48)
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %67, %34
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i64, i64* @mmPIPE0_DMIF_BUFFER_CONTROL, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @RREG32(i64 %59)
  %61 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %70

65:                                               ; preds = %56
  %66 = call i32 @udelay(i32 1)
  br label %67

67:                                               ; preds = %65
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %50

70:                                               ; preds = %64, %50
  %71 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %72 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %78 = icmp ne %struct.drm_display_mode* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i64, i64* %10, align 8
  switch i64 %80, label %82 [
    i64 0, label %81
    i64 2, label %83
  ]

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %79, %81
  store i64 8192, i64* %5, align 8
  br label %85

83:                                               ; preds = %79
  store i64 16384, i64* %5, align 8
  br label %85

84:                                               ; preds = %76, %70
  store i64 0, i64* %5, align 8
  br label %85

85:                                               ; preds = %84, %83, %82
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local i32 @WREG32(i64, i64) #1

declare dso_local i64 @DC_LB_MEMORY_CONFIG(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
