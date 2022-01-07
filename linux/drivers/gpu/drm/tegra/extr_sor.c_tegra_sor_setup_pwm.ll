; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_setup_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_setup_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }

@SOR_PWM_DIV = common dso_local global i32 0, align 4
@SOR_PWM_DIV_MASK = common dso_local global i32 0, align 4
@SOR_PWM_CTL = common dso_local global i32 0, align 4
@SOR_PWM_CTL_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@SOR_PWM_CTL_CLK_SEL = common dso_local global i32 0, align 4
@SOR_PWM_CTL_TRIGGER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*, i64)* @tegra_sor_setup_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_setup_pwm(%struct.tegra_sor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %8 = load i32, i32* @SOR_PWM_DIV, align 4
  %9 = call i32 @tegra_sor_readl(%struct.tegra_sor* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @SOR_PWM_DIV_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 1024
  store i32 %15, i32* %6, align 4
  %16 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SOR_PWM_DIV, align 4
  %19 = call i32 @tegra_sor_writel(%struct.tegra_sor* %16, i32 %17, i32 %18)
  %20 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %21 = load i32, i32* @SOR_PWM_CTL, align 4
  %22 = call i32 @tegra_sor_readl(%struct.tegra_sor* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @SOR_PWM_CTL_DUTY_CYCLE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 1024
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @SOR_PWM_CTL_CLK_SEL, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @SOR_PWM_CTL_TRIGGER, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SOR_PWM_CTL, align 4
  %39 = call i32 @tegra_sor_writel(%struct.tegra_sor* %36, i32 %37, i32 %38)
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @msecs_to_jiffies(i64 %41)
  %43 = add i64 %40, %42
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %58, %2
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @time_before(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.tegra_sor*, %struct.tegra_sor** %4, align 8
  %51 = load i32, i32* @SOR_PWM_CTL, align 4
  %52 = call i32 @tegra_sor_readl(%struct.tegra_sor* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SOR_PWM_CTL_TRIGGER, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %63

58:                                               ; preds = %49
  %59 = call i32 @usleep_range(i32 25, i32 100)
  br label %44

60:                                               ; preds = %44
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %3, align 4
  ret i32 %64
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
