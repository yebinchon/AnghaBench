; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SOR_TEST = common dso_local global i32 0, align 4
@SOR_TEST_HEAD_MODE_MASK = common dso_local global i64 0, align 8
@SOR_TEST_HEAD_MODE_AWAKE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*)* @tegra_sor_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_wakeup(%struct.tegra_sor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 250)
  %8 = add i64 %6, %7
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @time_before(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %16 = load i32, i32* @SOR_TEST, align 4
  %17 = call i64 @tegra_sor_readl(%struct.tegra_sor* %15, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @SOR_TEST_HEAD_MODE_MASK, align 8
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @SOR_TEST_HEAD_MODE_AWAKE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

25:                                               ; preds = %14
  %26 = call i32 @usleep_range(i32 25, i32 100)
  br label %9

27:                                               ; preds = %9
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
