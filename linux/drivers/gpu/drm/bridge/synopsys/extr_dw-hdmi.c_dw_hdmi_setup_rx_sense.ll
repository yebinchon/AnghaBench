; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_setup_rx_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_setup_rx_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_hdmi_setup_rx_sense(%struct.dw_hdmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %8 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %11 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %19 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %25 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %28 = call i32 @dw_hdmi_update_power(%struct.dw_hdmi* %27)
  %29 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %30 = call i32 @dw_hdmi_update_phy_mask(%struct.dw_hdmi* %29)
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.dw_hdmi*, %struct.dw_hdmi** %4, align 8
  %33 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dw_hdmi_update_power(%struct.dw_hdmi*) #1

declare dso_local i32 @dw_hdmi_update_phy_mask(%struct.dw_hdmi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
