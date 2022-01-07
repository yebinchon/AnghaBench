; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_i2c = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HSI2C_CONF = common dso_local global i64 0, align 8
@HSI2C_TIMEOUT = common dso_local global i64 0, align 8
@HSI2C_TIMEOUT_EN = common dso_local global i32 0, align 4
@HSI2C_FUNC_MODE_I2C = common dso_local global i32 0, align 4
@HSI2C_MASTER = common dso_local global i32 0, align 4
@HSI2C_CTL = common dso_local global i64 0, align 8
@HSI2C_TRAILING_COUNT = common dso_local global i32 0, align 4
@HSI2C_TRAILIG_CTL = common dso_local global i64 0, align 8
@HSI2C_HS_TX_CLOCK = common dso_local global i64 0, align 8
@HSI2C_ADDR = common dso_local global i64 0, align 8
@HSI2C_HS_MODE = common dso_local global i32 0, align 4
@HSI2C_AUTO_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos5_i2c*)* @exynos5_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5_i2c_init(%struct.exynos5_i2c* %0) #0 {
  %2 = alloca %struct.exynos5_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.exynos5_i2c* %0, %struct.exynos5_i2c** %2, align 8
  %5 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HSI2C_CONF, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %12 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HSI2C_TIMEOUT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @HSI2C_TIMEOUT_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %23 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HSI2C_TIMEOUT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* @HSI2C_FUNC_MODE_I2C, align 4
  %29 = load i32, i32* @HSI2C_MASTER, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %32 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HSI2C_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* @HSI2C_TRAILING_COUNT, align 4
  %38 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %39 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HSI2C_TRAILIG_CTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %45 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HSI2C_HS_TX_CLOCK, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %1
  %50 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %51 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @MASTER_ID(i32 %53)
  %55 = call i32 @HSI2C_MASTER_ID(i32 %54)
  %56 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %57 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HSI2C_ADDR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load i32, i32* @HSI2C_HS_MODE, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %49, %1
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @HSI2C_AUTO_MODE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %70 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HSI2C_CONF, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @HSI2C_MASTER_ID(i32) #1

declare dso_local i32 @MASTER_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
