; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32 }

@DSI_TRIGGER_HOST = common dso_local global i32 0, align 4
@DSI_TRIGGER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"timeout waiting for transmission to complete\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dsi*, i64)* @tegra_dsi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_transmit(%struct.tegra_dsi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %8 = load i32, i32* @DSI_TRIGGER_HOST, align 4
  %9 = load i32, i32* @DSI_TRIGGER, align 4
  %10 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %7, i32 %8, i32 %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @msecs_to_jiffies(i64 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @time_before(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %22 = load i32, i32* @DSI_TRIGGER, align 4
  %23 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DSI_TRIGGER_HOST, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %20
  %30 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %15

31:                                               ; preds = %15
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @tegra_dsi_writel(%struct.tegra_dsi*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

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
