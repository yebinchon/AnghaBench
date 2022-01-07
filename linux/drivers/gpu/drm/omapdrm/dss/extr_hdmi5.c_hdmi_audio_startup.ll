; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_audio_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_audio_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_hdmi = type { void (%struct.device.0*)*, i32 }
%struct.device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, void (%struct.device*)*)* @hdmi_audio_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_startup(%struct.device* %0, void (%struct.device*)* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca void (%struct.device*)*, align 8
  %5 = alloca %struct.omap_hdmi*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store void (%struct.device*)* %1, void (%struct.device*)** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.omap_hdmi* @dev_get_drvdata(%struct.device* %6)
  store %struct.omap_hdmi* %7, %struct.omap_hdmi** %5, align 8
  %8 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %9 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %12 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %11, i32 0, i32 0
  %13 = load void (%struct.device.0*)*, void (%struct.device.0*)** %12, align 8
  %14 = icmp ne void (%struct.device.0*)* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load void (%struct.device*)*, void (%struct.device*)** %4, align 8
  %18 = bitcast void (%struct.device*)* %17 to void (%struct.device.0*)*
  %19 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %20 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %19, i32 0, i32 0
  store void (%struct.device.0*)* %18, void (%struct.device.0*)** %20, align 8
  %21 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %22 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  ret i32 0
}

declare dso_local %struct.omap_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
