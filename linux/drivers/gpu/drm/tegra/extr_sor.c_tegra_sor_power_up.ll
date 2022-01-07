; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }

@SOR_PWR = common dso_local global i32 0, align 4
@SOR_PWR_TRIGGER = common dso_local global i32 0, align 4
@SOR_PWR_NORMAL_STATE_PU = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*, i64)* @tegra_sor_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_power_up(%struct.tegra_sor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %8 = load i32, i32* @SOR_PWR, align 4
  %9 = call i32 @tegra_sor_readl(%struct.tegra_sor* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @SOR_PWR_TRIGGER, align 4
  %11 = load i32, i32* @SOR_PWR_NORMAL_STATE_PU, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SOR_PWR, align 4
  %18 = call i32 @tegra_sor_writel(%struct.tegra_sor* %15, i32 %16, i32 %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @msecs_to_jiffies(i64 %20)
  %22 = add i64 %19, %21
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %37, %2
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %30 = load i32, i32* @SOR_PWR, align 4
  %31 = call i32 @tegra_sor_readl(%struct.tegra_sor* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SOR_PWR_TRIGGER, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %28
  %38 = call i32 @usleep_range(i32 25, i32 100)
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
