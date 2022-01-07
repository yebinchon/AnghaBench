; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }

@SOR_SUPER_STATE1 = common dso_local global i32 0, align 4
@SOR_SUPER_STATE_HEAD_MODE_AWAKE = common dso_local global i64 0, align 8
@SOR_SUPER_STATE_MODE_NORMAL = common dso_local global i64 0, align 8
@SOR_SUPER_STATE_ATTACHED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SOR_TEST = common dso_local global i32 0, align 4
@SOR_TEST_ATTACHED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*)* @tegra_sor_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_attach(%struct.tegra_sor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  %6 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %7 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %8 = call i64 @tegra_sor_readl(%struct.tegra_sor* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @SOR_SUPER_STATE_HEAD_MODE_AWAKE, align 8
  %10 = load i64, i64* %4, align 8
  %11 = or i64 %10, %9
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @SOR_SUPER_STATE_MODE_NORMAL, align 8
  %13 = load i64, i64* %4, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %18 = call i32 @tegra_sor_writel(%struct.tegra_sor* %15, i64 %16, i32 %17)
  %19 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %20 = call i32 @tegra_sor_super_update(%struct.tegra_sor* %19)
  %21 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %22 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %23 = call i64 @tegra_sor_readl(%struct.tegra_sor* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* @SOR_SUPER_STATE_ATTACHED, align 8
  %25 = load i64, i64* %4, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %30 = call i32 @tegra_sor_writel(%struct.tegra_sor* %27, i64 %28, i32 %29)
  %31 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %32 = call i32 @tegra_sor_super_update(%struct.tegra_sor* %31)
  %33 = load i64, i64* @jiffies, align 8
  %34 = call i64 @msecs_to_jiffies(i32 250)
  %35 = add i64 %33, %34
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %50, %1
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @time_before(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %43 = load i32, i32* @SOR_TEST, align 4
  %44 = call i64 @tegra_sor_readl(%struct.tegra_sor* %42, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @SOR_TEST_ATTACHED, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %41
  %51 = call i32 @usleep_range(i32 25, i32 100)
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i64, i32) #1

declare dso_local i32 @tegra_sor_super_update(%struct.tegra_sor*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
