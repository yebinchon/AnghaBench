; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { %struct.tegra_dsi*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to enable MIPI calibration: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"MIPI calibration failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dsi*)* @tegra_dsi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_prepare(%struct.tegra_dsi* %0) #0 {
  %2 = alloca %struct.tegra_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %2, align 8
  %4 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @pm_runtime_get_sync(i32 %6)
  %8 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @tegra_mipi_enable(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %22 = call i32 @tegra_dsi_pad_calibrate(%struct.tegra_dsi* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %27 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %33 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %32, i32 0, i32 0
  %34 = load %struct.tegra_dsi*, %struct.tegra_dsi** %33, align 8
  %35 = icmp ne %struct.tegra_dsi* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %38 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %37, i32 0, i32 0
  %39 = load %struct.tegra_dsi*, %struct.tegra_dsi** %38, align 8
  call void @tegra_dsi_prepare(%struct.tegra_dsi* %39)
  br label %40

40:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra_mipi_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tegra_dsi_pad_calibrate(%struct.tegra_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
