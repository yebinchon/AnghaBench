; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32, i32, %struct.tegra_dsi* }

@.str = private unnamed_addr constant [40 x i8] c"failed to disable MIPI calibration: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dsi*)* @tegra_dsi_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_unprepare(%struct.tegra_dsi* %0) #0 {
  %2 = alloca %struct.tegra_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %2, align 8
  %4 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %4, i32 0, i32 2
  %6 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %7 = icmp ne %struct.tegra_dsi* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %9, i32 0, i32 2
  %11 = load %struct.tegra_dsi*, %struct.tegra_dsi** %10, align 8
  call void @tegra_dsi_unprepare(%struct.tegra_dsi* %11)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tegra_mipi_disable(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %12
  %26 = load %struct.tegra_dsi*, %struct.tegra_dsi** %2, align 8
  %27 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pm_runtime_put(i32 %28)
  ret void
}

declare dso_local i32 @tegra_mipi_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
