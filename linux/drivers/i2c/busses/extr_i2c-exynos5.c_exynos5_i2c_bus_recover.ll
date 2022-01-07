; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_bus_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_bus_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_i2c = type { i64 }

@HSI2C_CTL = common dso_local global i64 0, align 8
@HSI2C_RXCHON = common dso_local global i32 0, align 4
@HSI2C_CONF = common dso_local global i64 0, align 8
@HSI2C_AUTO_MODE = common dso_local global i32 0, align 4
@HSI2C_CMD_READ_DATA = common dso_local global i32 0, align 4
@HSI2C_MANUAL_CMD = common dso_local global i64 0, align 8
@HSI2C_CMD_SEND_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos5_i2c*)* @exynos5_i2c_bus_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5_i2c_bus_recover(%struct.exynos5_i2c* %0) #0 {
  %2 = alloca %struct.exynos5_i2c*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos5_i2c* %0, %struct.exynos5_i2c** %2, align 8
  %4 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HSI2C_CTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @HSI2C_RXCHON, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %14 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HSI2C_CTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %20 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HSI2C_CONF, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = load i32, i32* @HSI2C_AUTO_MODE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HSI2C_CONF, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* @HSI2C_CMD_READ_DATA, align 4
  %36 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %37 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HSI2C_MANUAL_CMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %43 = call i32 @exynos5_i2c_wait_bus_idle(%struct.exynos5_i2c* %42)
  %44 = load i32, i32* @HSI2C_CMD_SEND_STOP, align 4
  %45 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %46 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HSI2C_MANUAL_CMD, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %52 = call i32 @exynos5_i2c_wait_bus_idle(%struct.exynos5_i2c* %51)
  %53 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %54 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HSI2C_CTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = load i32, i32* @HSI2C_RXCHON, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %64 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HSI2C_CTL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %70 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HSI2C_CONF, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  %75 = load i32, i32* @HSI2C_AUTO_MODE, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %2, align 8
  %79 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HSI2C_CONF, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @exynos5_i2c_wait_bus_idle(%struct.exynos5_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
