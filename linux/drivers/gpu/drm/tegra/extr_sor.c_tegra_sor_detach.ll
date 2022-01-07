; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }

@SOR_SUPER_STATE1 = common dso_local global i32 0, align 4
@SOR_SUPER_STATE_MODE_NORMAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SOR_PWR = common dso_local global i32 0, align 4
@SOR_PWR_MODE_SAFE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@SOR_SUPER_STATE_HEAD_MODE_MASK = common dso_local global i64 0, align 8
@SOR_SUPER_STATE_ATTACHED = common dso_local global i64 0, align 8
@SOR_TEST = common dso_local global i32 0, align 4
@SOR_TEST_ATTACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*)* @tegra_sor_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_detach(%struct.tegra_sor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_sor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %3, align 8
  %6 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %7 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %8 = call i64 @tegra_sor_readl(%struct.tegra_sor* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @SOR_SUPER_STATE_MODE_NORMAL, align 8
  %10 = xor i64 %9, -1
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %4, align 8
  %13 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %16 = call i32 @tegra_sor_writel(%struct.tegra_sor* %13, i64 %14, i32 %15)
  %17 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %18 = call i32 @tegra_sor_super_update(%struct.tegra_sor* %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = call i64 @msecs_to_jiffies(i32 250)
  %21 = add i64 %19, %20
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %36, %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @time_before(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %29 = load i32, i32* @SOR_PWR, align 4
  %30 = call i64 @tegra_sor_readl(%struct.tegra_sor* %28, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @SOR_PWR_MODE_SAFE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %37

36:                                               ; preds = %27
  br label %22

37:                                               ; preds = %35, %22
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @SOR_PWR_MODE_SAFE, align 8
  %40 = and i64 %38, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %100

45:                                               ; preds = %37
  %46 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %47 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %48 = call i64 @tegra_sor_readl(%struct.tegra_sor* %46, i32 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* @SOR_SUPER_STATE_HEAD_MODE_MASK, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %4, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %4, align 8
  %53 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %56 = call i32 @tegra_sor_writel(%struct.tegra_sor* %53, i64 %54, i32 %55)
  %57 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %58 = call i32 @tegra_sor_super_update(%struct.tegra_sor* %57)
  %59 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %60 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %61 = call i64 @tegra_sor_readl(%struct.tegra_sor* %59, i32 %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* @SOR_SUPER_STATE_ATTACHED, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %4, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %4, align 8
  %66 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i32, i32* @SOR_SUPER_STATE1, align 4
  %69 = call i32 @tegra_sor_writel(%struct.tegra_sor* %66, i64 %67, i32 %68)
  %70 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %71 = call i32 @tegra_sor_super_update(%struct.tegra_sor* %70)
  %72 = load i64, i64* @jiffies, align 8
  %73 = call i64 @msecs_to_jiffies(i32 250)
  %74 = add i64 %72, %73
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %89, %45
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @time_before(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.tegra_sor*, %struct.tegra_sor** %3, align 8
  %82 = load i32, i32* @SOR_TEST, align 4
  %83 = call i64 @tegra_sor_readl(%struct.tegra_sor* %81, i32 %82)
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @SOR_TEST_ATTACHED, align 8
  %86 = and i64 %84, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %91

89:                                               ; preds = %80
  %90 = call i32 @usleep_range(i32 25, i32 100)
  br label %75

91:                                               ; preds = %88, %75
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @SOR_TEST_ATTACHED, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ETIMEDOUT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %96, %42
  %101 = load i32, i32* %2, align 4
  ret i32 %101
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
