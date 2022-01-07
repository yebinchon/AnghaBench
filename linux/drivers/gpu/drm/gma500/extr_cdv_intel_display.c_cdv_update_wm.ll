; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_update_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)* }
%struct.drm_crtc = type { i32 }
%struct.gma_crtc = type { i32 }

@DSPFW1 = common dso_local global i32 0, align 4
@DSP_FIFO_SR_WM_MASK = common dso_local global i32 0, align 4
@DSP_FIFO_SR_WM_SHIFT = common dso_local global i32 0, align 4
@CURSOR_B_FIFO_WM_MASK = common dso_local global i32 0, align 4
@CURSOR_B_FIFO_WM_SHIFT = common dso_local global i32 0, align 4
@DSPFW2 = common dso_local global i32 0, align 4
@CURSOR_A_FIFO_WM_MASK = common dso_local global i32 0, align 4
@CURSOR_A_FIFO_WM_SHIFT = common dso_local global i32 0, align 4
@DSP_PLANE_C_FIFO_WM_MASK = common dso_local global i32 0, align 4
@DSP_PLANE_C_FIFO_WM_SHIFT = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@DSPFW5 = common dso_local global i32 0, align 4
@DSP_PLANE_B_FIFO_WM1_SHIFT = common dso_local global i32 0, align 4
@DSP_PLANE_A_FIFO_WM1_SHIFT = common dso_local global i32 0, align 4
@CURSOR_B_FIFO_WM1_SHIFT = common dso_local global i32 0, align 4
@CURSOR_FIFO_SR_WM1_SHIFT = common dso_local global i32 0, align 4
@DSPFW6 = common dso_local global i32 0, align 4
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@DSPFW4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdv_update_wm(%struct.drm_device* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.gma_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %5, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %11)
  store %struct.gma_crtc* %12, %struct.gma_crtc** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i32 @cdv_intel_pipe_enabled(%struct.drm_device* %13, i32 0)
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call i32 @cdv_intel_pipe_enabled(%struct.drm_device* %15, i32 1)
  %17 = xor i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %2
  %20 = load i32, i32* @DSPFW1, align 4
  %21 = call i32 @REG_READ(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @DSP_FIFO_SR_WM_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @DSP_FIFO_SR_WM_SHIFT, align 4
  %27 = shl i32 126, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @CURSOR_B_FIFO_WM_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @CURSOR_B_FIFO_WM_SHIFT, align 4
  %35 = shl i32 4, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @DSPFW1, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @REG_WRITE(i32 %38, i32 %39)
  %41 = load i32, i32* @DSPFW2, align 4
  %42 = call i32 @REG_READ(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @CURSOR_A_FIFO_WM_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @CURSOR_A_FIFO_WM_SHIFT, align 4
  %48 = shl i32 6, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @DSP_PLANE_C_FIFO_WM_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @DSP_PLANE_C_FIFO_WM_SHIFT, align 4
  %56 = shl i32 8, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @DSPFW2, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @REG_WRITE(i32 %59, i32 %60)
  %62 = load i32, i32* @DSPFW3, align 4
  %63 = call i32 @REG_WRITE(i32 %62, i32 905969664)
  %64 = load %struct.gma_crtc*, %struct.gma_crtc** %6, align 8
  %65 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %76

68:                                               ; preds = %19
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %70 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %71 = call i64 @gma_pipe_has_type(%struct.drm_crtc* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @DSPFW5, align 4
  %75 = call i32 @REG_WRITE(i32 %74, i32 262960)
  br label %91

76:                                               ; preds = %68, %19
  %77 = load i32, i32* @DSP_PLANE_B_FIFO_WM1_SHIFT, align 4
  %78 = shl i32 3, %77
  %79 = load i32, i32* @DSP_PLANE_A_FIFO_WM1_SHIFT, align 4
  %80 = shl i32 4, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @CURSOR_B_FIFO_WM1_SHIFT, align 4
  %83 = shl i32 3, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @CURSOR_FIFO_SR_WM1_SHIFT, align 4
  %86 = shl i32 4, %85
  %87 = or i32 %84, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @DSPFW5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @REG_WRITE(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %76, %73
  %92 = load i32, i32* @DSPFW6, align 4
  %93 = call i32 @REG_WRITE(i32 %92, i32 16)
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = call i32 @gma_wait_for_vblank(%struct.drm_device* %94)
  %96 = load i32, i32* @FW_BLC_SELF, align 4
  %97 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %98 = call i32 @REG_WRITE(i32 %96, i32 %97)
  %99 = load i32, i32* @FW_BLC_SELF, align 4
  %100 = call i32 @REG_READ(i32 %99)
  %101 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %102 = call i32 @gma_wait_for_vblank(%struct.drm_device* %101)
  br label %125

103:                                              ; preds = %2
  %104 = load i32, i32* @DSPFW1, align 4
  %105 = call i32 @REG_WRITE(i32 %104, i32 1065879560)
  %106 = load i32, i32* @DSPFW2, align 4
  %107 = call i32 @REG_WRITE(i32 %106, i32 184680962)
  %108 = load i32, i32* @DSPFW3, align 4
  %109 = call i32 @REG_WRITE(i32 %108, i32 603979776)
  %110 = load i32, i32* @DSPFW4, align 4
  %111 = call i32 @REG_WRITE(i32 %110, i32 134414850)
  %112 = load i32, i32* @DSPFW5, align 4
  %113 = call i32 @REG_WRITE(i32 %112, i32 16843009)
  %114 = load i32, i32* @DSPFW6, align 4
  %115 = call i32 @REG_WRITE(i32 %114, i32 464)
  %116 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %117 = call i32 @gma_wait_for_vblank(%struct.drm_device* %116)
  %118 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %119 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %121, align 8
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = call i32 %122(%struct.drm_device* %123)
  br label %125

125:                                              ; preds = %103, %91
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @cdv_intel_pipe_enabled(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i64 @gma_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i32 @gma_wait_for_vblank(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
