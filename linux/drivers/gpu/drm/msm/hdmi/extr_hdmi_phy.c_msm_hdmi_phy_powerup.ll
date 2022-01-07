; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_powerup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hdmi_phy*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_phy_powerup(%struct.hdmi_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.hdmi_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %6 = icmp ne %struct.hdmi_phy* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %9 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.hdmi_phy*, i64)*, i32 (%struct.hdmi_phy*, i64)** %11, align 8
  %13 = icmp ne i32 (%struct.hdmi_phy*, i64)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7, %2
  br label %24

15:                                               ; preds = %7
  %16 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %17 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.hdmi_phy*, i64)*, i32 (%struct.hdmi_phy*, i64)** %19, align 8
  %21 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 %20(%struct.hdmi_phy* %21, i64 %22)
  br label %24

24:                                               ; preds = %15, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
