; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_resource_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_resource_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { i32*, i32*, %struct.TYPE_2__*, %struct.hdmi_phy_cfg* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_phy_cfg = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_hdmi_phy_resource_disable(%struct.hdmi_phy* %0) #0 {
  %2 = alloca %struct.hdmi_phy*, align 8
  %3 = alloca %struct.hdmi_phy_cfg*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %2, align 8
  %6 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %6, i32 0, i32 3
  %8 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %7, align 8
  store %struct.hdmi_phy_cfg* %8, %struct.hdmi_phy_cfg** %3, align 8
  %9 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %10 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %22 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %3, align 8
  %34 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %49, %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.hdmi_phy*, %struct.hdmi_phy** %2, align 8
  %42 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regulator_disable(i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @pm_runtime_put_sync(%struct.device* %53)
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
