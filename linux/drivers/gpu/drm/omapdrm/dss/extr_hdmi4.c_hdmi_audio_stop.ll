; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_audio_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_audio_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_hdmi = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @hdmi_audio_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_stop(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.omap_hdmi* @dev_get_drvdata(%struct.device* %5)
  store %struct.omap_hdmi* %6, %struct.omap_hdmi** %3, align 8
  %7 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %7, i32 0, i32 3
  %9 = call i32 @hdmi_mode_has_audio(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %24 = call i32 @hdmi_stop_audio_stream(%struct.omap_hdmi* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %29 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %28, i32 0, i32 1
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local %struct.omap_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hdmi_mode_has_audio(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdmi_stop_audio_stream(%struct.omap_hdmi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
