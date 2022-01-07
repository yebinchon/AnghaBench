; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@DC_LB_MEMORY_SPLIT = common dso_local global i32 0, align 4
@PIPE0_DMIF_BUFFER_CONTROL = common dso_local global i32 0, align 4
@DMIF_BUFFERS_ALLOCATED_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @evergreen_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_line_buffer_adjust(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %7, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %9, align 8
  %14 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %15 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %25 = icmp ne %struct.drm_display_mode* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %28 = icmp ne %struct.drm_display_mode* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %31

30:                                               ; preds = %26
  store i32 2, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %29
  br label %33

32:                                               ; preds = %23, %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @DC_LB_MEMORY_SPLIT, align 4
  %44 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %45 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %51 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %42
  %54 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %55 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %53, %42
  %58 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @DMIF_BUFFERS_ALLOCATED(i32 %61)
  %63 = call i32 @WREG32(i32 %60, i32 %62)
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %81, %57
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load i32, i32* @PIPE0_DMIF_BUFFER_CONTROL, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @RREG32(i32 %73)
  %75 = load i32, i32* @DMIF_BUFFERS_ALLOCATED_COMPLETED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  %80 = call i32 @udelay(i32 1)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %64

84:                                               ; preds = %78, %64
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %87 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %85
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %93 = icmp ne %struct.drm_display_mode* %92, null
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 4, label %96
    i32 1, label %103
    i32 5, label %103
    i32 2, label %109
    i32 6, label %109
    i32 3, label %115
    i32 7, label %115
  ]

96:                                               ; preds = %94, %94
  br label %97

97:                                               ; preds = %94, %96
  %98 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %99 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 8192, i32* %5, align 4
  br label %122

102:                                              ; preds = %97
  store i32 7680, i32* %5, align 4
  br label %122

103:                                              ; preds = %94, %94
  %104 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %105 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 12288, i32* %5, align 4
  br label %122

108:                                              ; preds = %103
  store i32 11520, i32* %5, align 4
  br label %122

109:                                              ; preds = %94, %94
  %110 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %111 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 16384, i32* %5, align 4
  br label %122

114:                                              ; preds = %109
  store i32 15360, i32* %5, align 4
  br label %122

115:                                              ; preds = %94, %94
  %116 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %117 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 4096, i32* %5, align 4
  br label %122

120:                                              ; preds = %115
  store i32 3840, i32* %5, align 4
  br label %122

121:                                              ; preds = %91, %85
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %120, %119, %114, %113, %108, %107, %102, %101
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @DMIF_BUFFERS_ALLOCATED(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
