; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@DSI_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"peripheral returned no data\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*, i64)* @tegra_dsi_wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_wait_for_response(%struct.tegra_dsi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 250)
  %10 = add i64 %8, %9
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @time_before(i64 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %18 = load i32, i32* @DSI_STATUS, align 4
  %19 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 31
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %16
  %29 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %11

30:                                               ; preds = %11
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @tegra_dsi_readl(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
