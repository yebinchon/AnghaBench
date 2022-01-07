; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_dce6_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_dce6_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_crtc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@DC_LB_MEMORY_SPLIT = common dso_local global i64 0, align 8
@PIPE0_DMIF_BUFFER_CONTROL = common dso_local global i64 0, align 8
@DMIF_BUFFERS_ALLOCATED_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, %struct.radeon_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dce6_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dce6_line_buffer_adjust(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %7, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %9, align 8
  %14 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %15 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 32
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 2
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
  %35 = load i64, i64* @DC_LB_MEMORY_SPLIT, align 8
  %36 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %37 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @DC_LB_MEMORY_CONFIG(i64 %40)
  %42 = call i32 @WREG32(i64 %39, i32 %41)
  %43 = load i64, i64* @PIPE0_DMIF_BUFFER_CONTROL, align 8
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @DMIF_BUFFERS_ALLOCATED(i64 %46)
  %48 = call i32 @WREG32(i64 %45, i32 %47)
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %66, %34
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i64, i64* @PIPE0_DMIF_BUFFER_CONTROL, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @RREG32(i64 %58)
  %60 = load i32, i32* @DMIF_BUFFERS_ALLOCATED_COMPLETED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %69

64:                                               ; preds = %55
  %65 = call i32 @udelay(i32 1)
  br label %66

66:                                               ; preds = %64
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %49

69:                                               ; preds = %63, %49
  %70 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %77 = icmp ne %struct.drm_display_mode* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  switch i64 %79, label %81 [
    i64 0, label %80
    i64 2, label %82
  ]

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %78, %80
  store i64 8192, i64* %5, align 8
  br label %84

82:                                               ; preds = %78
  store i64 16384, i64* %5, align 8
  br label %84

83:                                               ; preds = %75, %69
  store i64 0, i64* %5, align 8
  br label %84

84:                                               ; preds = %83, %82, %81
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @DC_LB_MEMORY_CONFIG(i64) #1

declare dso_local i32 @DMIF_BUFFERS_ALLOCATED(i64) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
