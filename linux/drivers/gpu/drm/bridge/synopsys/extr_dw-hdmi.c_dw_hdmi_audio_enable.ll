; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_audio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, i32, i32 (%struct.dw_hdmi*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_hdmi_audio_enable(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i64, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  %4 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %9 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %11 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %10, i32 0, i32 2
  %12 = load i32 (%struct.dw_hdmi*)*, i32 (%struct.dw_hdmi*)** %11, align 8
  %13 = icmp ne i32 (%struct.dw_hdmi*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %16 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %15, i32 0, i32 2
  %17 = load i32 (%struct.dw_hdmi*)*, i32 (%struct.dw_hdmi*)** %16, align 8
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %19 = call i32 %17(%struct.dw_hdmi* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %21, i32 0, i32 1
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
