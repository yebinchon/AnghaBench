; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_output_dsi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_output_dsi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"failed to power on dsi\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to enable the panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_output_dsi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_output_dsi_enable(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %4 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %11 = call i32 @mtk_dsi_poweron(%struct.mtk_dsi* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %44

16:                                               ; preds = %9
  %17 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %18 = call i32 @mtk_dsi_set_mode(%struct.mtk_dsi* %17)
  %19 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %20 = call i32 @mtk_dsi_clk_hs_mode(%struct.mtk_dsi* %19, i32 1)
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %22 = call i32 @mtk_dsi_start(%struct.mtk_dsi* %21)
  %23 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %24 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %29 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @drm_panel_enable(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %38 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %44

39:                                               ; preds = %33
  %40 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %41 = call i32 @mtk_dsi_stop(%struct.mtk_dsi* %40)
  %42 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %43 = call i32 @mtk_dsi_poweroff(%struct.mtk_dsi* %42)
  br label %44

44:                                               ; preds = %39, %36, %14, %8
  ret void
}

declare dso_local i32 @mtk_dsi_poweron(%struct.mtk_dsi*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mtk_dsi_set_mode(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_clk_hs_mode(%struct.mtk_dsi*, i32) #1

declare dso_local i32 @mtk_dsi_start(%struct.mtk_dsi*) #1

declare dso_local i64 @drm_panel_enable(i64) #1

declare dso_local i32 @mtk_dsi_stop(%struct.mtk_dsi*) #1

declare dso_local i32 @mtk_dsi_poweroff(%struct.mtk_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
