; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i64, i32, i32, i32, i64 }

@VM_DONE_INT_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to unprepare the panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_poweroff(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %3 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %61

18:                                               ; preds = %11
  %19 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %20 = call i32 @mtk_dsi_stop(%struct.mtk_dsi* %19)
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %22 = load i32, i32* @VM_DONE_INT_FLAG, align 4
  %23 = call i32 @mtk_dsi_switch_to_cmd_mode(%struct.mtk_dsi* %21, i32 %22, i32 500)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %18
  %26 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %27 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %32 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @drm_panel_unprepare(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %61

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %42 = call i32 @mtk_dsi_reset_engine(%struct.mtk_dsi* %41)
  %43 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %44 = call i32 @mtk_dsi_lane0_ulp_mode_enter(%struct.mtk_dsi* %43)
  %45 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %46 = call i32 @mtk_dsi_clk_ulp_mode_enter(%struct.mtk_dsi* %45)
  %47 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %48 = call i32 @mtk_dsi_disable(%struct.mtk_dsi* %47)
  %49 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %50 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  %53 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %54 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  %57 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %58 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @phy_power_off(i32 %59)
  br label %61

61:                                               ; preds = %40, %36, %17, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mtk_dsi_stop(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_switch_to_cmd_mode(%struct.mtk_dsi*, i32, i32) #1

declare dso_local i64 @drm_panel_unprepare(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mtk_dsi_reset_engine(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_lane0_ulp_mode_enter(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_clk_ulp_mode_enter(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_disable(%struct.mtk_dsi*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
