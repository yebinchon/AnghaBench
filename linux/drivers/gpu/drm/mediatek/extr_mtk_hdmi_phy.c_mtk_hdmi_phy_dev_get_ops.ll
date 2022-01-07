; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_phy.c_mtk_hdmi_phy_dev_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_phy.c_mtk_hdmi_phy_dev_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_ops = type { i32 }
%struct.mtk_hdmi_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@mtk_hdmi_phy_dev_ops = common dso_local global %struct.phy_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get dev ops of phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_ops* (%struct.mtk_hdmi_phy*)* @mtk_hdmi_phy_dev_get_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_ops* @mtk_hdmi_phy_dev_get_ops(%struct.mtk_hdmi_phy* %0) #0 {
  %2 = alloca %struct.phy_ops*, align 8
  %3 = alloca %struct.mtk_hdmi_phy*, align 8
  store %struct.mtk_hdmi_phy* %0, %struct.mtk_hdmi_phy** %3, align 8
  %4 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %5 = icmp ne %struct.mtk_hdmi_phy* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store %struct.phy_ops* @mtk_hdmi_phy_dev_ops, %struct.phy_ops** %2, align 8
  br label %31

26:                                               ; preds = %18, %11, %6, %1
  %27 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.phy_ops* null, %struct.phy_ops** %2, align 8
  br label %31

31:                                               ; preds = %26, %25
  %32 = load %struct.phy_ops*, %struct.phy_ops** %2, align 8
  ret %struct.phy_ops* %32
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
