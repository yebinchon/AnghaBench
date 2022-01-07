; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_init_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_init_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_i2c_bus = type { i32 (i32, i32)*, i64, i32, i32, i32 }

@ASPEED_I2C_AC_TIMING_REG1 = common dso_local global i64 0, align 8
@ASPEED_I2CD_TIME_TBUF_MASK = common dso_local global i32 0, align 4
@ASPEED_I2CD_TIME_THDSTA_MASK = common dso_local global i32 0, align 4
@ASPEED_I2CD_TIME_TACST_MASK = common dso_local global i32 0, align 4
@ASPEED_NO_TIMEOUT_CTRL = common dso_local global i32 0, align 4
@ASPEED_I2C_AC_TIMING_REG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_i2c_bus*)* @aspeed_i2c_init_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_init_clk(%struct.aspeed_i2c_bus* %0) #0 {
  %2 = alloca %struct.aspeed_i2c_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aspeed_i2c_bus* %0, %struct.aspeed_i2c_bus** %2, align 8
  %5 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %6 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %9 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DIV_ROUND_UP(i32 %7, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %13 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ASPEED_I2C_AC_TIMING_REG1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @ASPEED_I2CD_TIME_TBUF_MASK, align 4
  %19 = load i32, i32* @ASPEED_I2CD_TIME_THDSTA_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ASPEED_I2CD_TIME_TACST_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %26 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %29 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 %27(i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %37 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ASPEED_I2C_AC_TIMING_REG1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* @ASPEED_NO_TIMEOUT_CTRL, align 4
  %43 = load %struct.aspeed_i2c_bus*, %struct.aspeed_i2c_bus** %2, align 8
  %44 = getelementptr inbounds %struct.aspeed_i2c_bus, %struct.aspeed_i2c_bus* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ASPEED_I2C_AC_TIMING_REG2, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  ret i32 0
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
