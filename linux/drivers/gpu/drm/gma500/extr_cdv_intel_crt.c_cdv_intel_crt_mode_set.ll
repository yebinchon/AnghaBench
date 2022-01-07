; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_crt.c_cdv_intel_crt_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_crt.c_cdv_intel_crt_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.gma_crtc = type { i64 }

@DPLL_A_MD = common dso_local global i32 0, align 4
@DPLL_B_MD = common dso_local global i32 0, align 4
@ADPA = common dso_local global i32 0, align 4
@DPLL_MD_UDI_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@ADPA_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@ADPA_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ADPA_PIPE_A_SELECT = common dso_local global i32 0, align 4
@ADPA_PIPE_B_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @cdv_intel_crt_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_crt_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.gma_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  store %struct.drm_crtc* %19, %struct.drm_crtc** %8, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %21 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %20)
  store %struct.gma_crtc* %21, %struct.gma_crtc** %9, align 8
  %22 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %23 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @DPLL_A_MD, align 4
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @DPLL_B_MD, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* @ADPA, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @REG_READ(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @DPLL_MD_UDI_MULTIPLIER_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @REG_WRITE(i32 %34, i32 %38)
  store i32 0, i32* %11, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i32, i32* @ADPA_HSYNC_ACTIVE_HIGH, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %30
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @ADPA_VSYNC_ACTIVE_HIGH, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %63 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @ADPA_PIPE_A_SELECT, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load i32, i32* @ADPA_PIPE_B_SELECT, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @REG_WRITE(i32 %75, i32 %76)
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
