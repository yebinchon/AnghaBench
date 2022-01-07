; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hdmi_phy*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_phy_powerdown(%struct.hdmi_phy* %0) #0 {
  %2 = alloca %struct.hdmi_phy*, align 8
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %2, align 8
  %3 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %4 = icmp ne %struct.hdmi_phy* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.hdmi_phy*)*, i32 (%struct.hdmi_phy*)** %9, align 8
  %11 = icmp ne i32 (%struct.hdmi_phy*)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5, %1
  br label %21

13:                                               ; preds = %5
  %14 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %15 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.hdmi_phy*)*, i32 (%struct.hdmi_phy*)** %17, align 8
  %19 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %20 = call i32 %18(%struct.hdmi_phy* %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
