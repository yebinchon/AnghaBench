; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_lvds.c_cdv_intel_lvds_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64 }
%struct.drm_display_mode = type { i64, i64 }
%struct.gma_crtc = type { i32 }

@PFIT_ENABLE = common dso_local global i32 0, align 4
@VERT_AUTO_SCALE = common dso_local global i32 0, align 4
@HORIZ_AUTO_SCALE = common dso_local global i32 0, align 4
@VERT_INTERP_BILINEAR = common dso_local global i32 0, align 4
@HORIZ_INTERP_BILINEAR = common dso_local global i32 0, align 4
@PFIT_PIPE_SHIFT = common dso_local global i32 0, align 4
@PANEL_8TO6_DITHER_ENABLE = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @cdv_intel_lvds_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_lvds_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_psb_private*, align 8
  %9 = alloca %struct.gma_crtc*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  store %struct.drm_psb_private* %16, %struct.drm_psb_private** %8, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.gma_crtc* @to_gma_crtc(i32 %19)
  store %struct.gma_crtc* %20, %struct.gma_crtc** %9, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28, %3
  %37 = load i32, i32* @PFIT_ENABLE, align 4
  %38 = load i32, i32* @VERT_AUTO_SCALE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HORIZ_AUTO_SCALE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @VERT_INTERP_BILINEAR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @HORIZ_INTERP_BILINEAR, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.gma_crtc*, %struct.gma_crtc** %9, align 8
  %49 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PFIT_PIPE_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %56 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, i32* @PANEL_8TO6_DITHER_ENABLE, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %59, %47
  %64 = load i32, i32* @PFIT_CONTROL, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @REG_WRITE(i32 %64, i32 %65)
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
