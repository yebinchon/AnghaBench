; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@KBC_RPT_DLY_0 = common dso_local global i64 0, align 8
@KBC_MAX_DEBOUNCE_CNT = common dso_local global i32 0, align 4
@KBC_CONTROL_FIFO_CNT_INT_EN = common dso_local global i32 0, align 4
@KBC_CONTROL_KBC_EN = common dso_local global i32 0, align 4
@KBC_CONTROL_0 = common dso_local global i64 0, align 8
@KBC_INIT_DLY_0 = common dso_local global i64 0, align 8
@KBC_INT_0 = common dso_local global i64 0, align 8
@KBC_KP_ENT0_0 = common dso_local global i64 0, align 8
@KBC_KP_ENT1_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_kbc*)* @tegra_kbc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_kbc_start(%struct.tegra_kbc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_kbc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_kbc* %0, %struct.tegra_kbc** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_prepare_enable(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @reset_control_assert(i32 %18)
  %20 = call i32 @udelay(i32 100)
  %21 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @reset_control_deassert(i32 %23)
  %25 = call i32 @udelay(i32 100)
  %26 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %27 = call i32 @tegra_kbc_config_pins(%struct.tegra_kbc* %26)
  %28 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %29 = call i32 @tegra_kbc_setup_wakekeys(%struct.tegra_kbc* %28, i32 0)
  %30 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @KBC_RPT_DLY_0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @KBC_MAX_DEBOUNCE_CNT, align 4
  %43 = call i32 @min(i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @KBC_DEBOUNCE_CNT_SHIFT(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = call i32 @KBC_FIFO_TH_CNT_SHIFT(i32 1)
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @KBC_CONTROL_FIFO_CNT_INT_EN, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @KBC_CONTROL_KBC_EN, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @KBC_CONTROL_0, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KBC_INIT_DLY_0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 1048575
  %70 = mul nsw i32 %69, 32
  %71 = call i32 @usecs_to_jiffies(i32 %70)
  %72 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %15, %88
  %77 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KBC_INT_0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 4
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  br label %101

88:                                               ; preds = %76
  %89 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %90 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @KBC_KP_ENT0_0, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl(i64 %93)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %96 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @KBC_KP_ENT1_0, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %5, align 4
  br label %76

101:                                              ; preds = %87
  %102 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @KBC_INT_0, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 7, i64 %106)
  %108 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %109 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @enable_irq(i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %101, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @tegra_kbc_config_pins(%struct.tegra_kbc*) #1

declare dso_local i32 @tegra_kbc_setup_wakekeys(%struct.tegra_kbc*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @KBC_DEBOUNCE_CNT_SHIFT(i32) #1

declare dso_local i32 @KBC_FIFO_TH_CNT_SHIFT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
