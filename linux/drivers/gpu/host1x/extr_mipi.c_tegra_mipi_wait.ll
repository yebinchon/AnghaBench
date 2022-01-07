; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_mipi.c_tegra_mipi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mipi = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MIPI_CAL_STATUS = common dso_local global i32 0, align 4
@MIPI_CAL_STATUS_ACTIVE = common dso_local global i32 0, align 4
@MIPI_CAL_STATUS_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mipi*)* @tegra_mipi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mipi_wait(%struct.tegra_mipi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_mipi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_mipi* %0, %struct.tegra_mipi** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 250)
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @time_before(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.tegra_mipi*, %struct.tegra_mipi** %3, align 8
  %16 = load i32, i32* @MIPI_CAL_STATUS, align 4
  %17 = call i32 @tegra_mipi_readl(%struct.tegra_mipi* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MIPI_CAL_STATUS_ACTIVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MIPI_CAL_STATUS_DONE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %33

28:                                               ; preds = %22, %14
  %29 = call i32 @usleep_range(i32 10, i32 50)
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @tegra_mipi_readl(%struct.tegra_mipi*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
