; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_dce8_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_dce8_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64 }
%struct.radeon_crtc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Mode too big for LB!\0A\00", align 1
@LB_MEMORY_CTRL = common dso_local global i64 0, align 8
@PIPE0_DMIF_BUFFER_CONTROL = common dso_local global i64 0, align 8
@DMIF_BUFFERS_ALLOCATED_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, %struct.radeon_crtc*, %struct.drm_display_mode*)* @dce8_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dce8_line_buffer_adjust(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %12 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %13 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 32
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %18 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %3
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %24 = icmp ne %struct.drm_display_mode* %23, null
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 1920
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 1, i64* %8, align 8
  store i64 2, i64* %9, align 8
  br label %65

31:                                               ; preds = %25
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 2560
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i64 2, i64* %8, align 8
  store i64 2, i64* %9, align 8
  br label %64

37:                                               ; preds = %31
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 4096
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  store i64 0, i64* %8, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RADEON_IS_IGP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  br label %63

52:                                               ; preds = %37
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RADEON_IS_IGP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %52, %42
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %30
  br label %67

66:                                               ; preds = %22, %3
  store i64 1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i64, i64* @LB_MEMORY_CTRL, align 8
  %69 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %70 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @LB_MEMORY_CONFIG(i64 %73)
  %75 = call i32 @LB_MEMORY_SIZE(i32 1712)
  %76 = or i32 %74, %75
  %77 = call i32 @WREG32(i64 %72, i32 %76)
  %78 = load i64, i64* @PIPE0_DMIF_BUFFER_CONTROL, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @DMIF_BUFFERS_ALLOCATED(i64 %81)
  %83 = call i32 @WREG32(i64 %80, i32 %82)
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %101, %67
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load i64, i64* @PIPE0_DMIF_BUFFER_CONTROL, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @RREG32(i64 %93)
  %95 = load i32, i32* @DMIF_BUFFERS_ALLOCATED_COMPLETED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %104

99:                                               ; preds = %90
  %100 = call i32 @udelay(i32 1)
  br label %101

101:                                              ; preds = %99
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %84

104:                                              ; preds = %98, %84
  %105 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %112 = icmp ne %struct.drm_display_mode* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i64, i64* %8, align 8
  switch i64 %114, label %116 [
    i64 0, label %115
    i64 1, label %117
    i64 2, label %118
  ]

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %113, %115
  store i64 8192, i64* %4, align 8
  br label %120

117:                                              ; preds = %113
  store i64 3840, i64* %4, align 8
  br label %120

118:                                              ; preds = %113
  store i64 5120, i64* %4, align 8
  br label %120

119:                                              ; preds = %110, %104
  store i64 0, i64* %4, align 8
  br label %120

120:                                              ; preds = %119, %118, %117, %116
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @LB_MEMORY_CONFIG(i64) #1

declare dso_local i32 @LB_MEMORY_SIZE(i32) #1

declare dso_local i32 @DMIF_BUFFERS_ALLOCATED(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
