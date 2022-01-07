; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_write_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32 }
%struct.drm_display_mode = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_DIP_IF_FLAGS = common dso_local global i32 0, align 4
@DIP_IF_FLAGS_IF1 = common dso_local global i32 0, align 4
@REG_IF1_HB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*, %struct.drm_display_mode*)* @tda998x_write_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_write_vsi(%struct.tda998x_priv* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.tda998x_priv*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %union.hdmi_infoframe, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %6 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %8, i32 0, i32 0
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = call i64 @drm_hdmi_vendor_infoframe_from_display_mode(i32* %7, i32* %9, %struct.drm_display_mode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %15 = load i32, i32* @REG_DIP_IF_FLAGS, align 4
  %16 = load i32, i32* @DIP_IF_FLAGS_IF1, align 4
  %17 = call i32 @reg_clear(%struct.tda998x_priv* %14, i32 %15, i32 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %20 = load i32, i32* @DIP_IF_FLAGS_IF1, align 4
  %21 = load i32, i32* @REG_IF1_HB0, align 4
  %22 = call i32 @tda998x_write_if(%struct.tda998x_priv* %19, i32 %20, i32 %21, %union.hdmi_infoframe* %5)
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local i64 @drm_hdmi_vendor_infoframe_from_display_mode(i32*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @reg_clear(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @tda998x_write_if(%struct.tda998x_priv*, i32, i32, %union.hdmi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
