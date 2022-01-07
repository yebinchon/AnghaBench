; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_avi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_avi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HDMI_QUANTIZATION_RANGE_FULL = common dso_local global i32 0, align 4
@DIP_IF_FLAGS_IF2 = common dso_local global i32 0, align 4
@REG_IF2_HB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, %struct.drm_display_mode*)* @tda998x_write_avi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_write_avi(%struct.tda998x_priv* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.tda998x_priv*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %union.hdmi_infoframe, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %6 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_3__*
  %7 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %8 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %7, i32 0, i32 1
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_3__* %6, i32* %8, %struct.drm_display_mode* %9)
  %11 = load i32, i32* @HDMI_QUANTIZATION_RANGE_FULL, align 4
  %12 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_3__*
  %15 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %16 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %15, i32 0, i32 1
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %19 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @drm_hdmi_avi_infoframe_quant_range(%struct.TYPE_3__* %14, i32* %16, %struct.drm_display_mode* %17, i32 %20)
  %22 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %23 = load i32, i32* @DIP_IF_FLAGS_IF2, align 4
  %24 = load i32, i32* @REG_IF2_HB0, align 4
  %25 = call i32 @tda998x_write_if(%struct.tda998x_priv* %22, i32 %23, i32 %24, %union.hdmi_infoframe* %5)
  ret void
}

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_3__*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_quant_range(%struct.TYPE_3__*, i32*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @tda998x_write_if(%struct.tda998x_priv*, i32, i32, %union.hdmi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
