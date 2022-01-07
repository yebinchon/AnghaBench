; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_qcom_geni_i2c_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_qcom_geni_i2c_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_dev = type { %struct.TYPE_2__, %struct.geni_i2c_clk_fld* }
%struct.TYPE_2__ = type { i64 }
%struct.geni_i2c_clk_fld = type { i32, i32, i32, i32 }

@SE_GENI_CLK_SEL = common dso_local global i64 0, align 8
@CLK_DIV_SHFT = common dso_local global i32 0, align 4
@SER_CLK_EN = common dso_local global i32 0, align 4
@GENI_SER_M_CLK_CFG = common dso_local global i64 0, align 8
@HIGH_COUNTER_SHFT = common dso_local global i32 0, align 4
@LOW_COUNTER_SHFT = common dso_local global i32 0, align 4
@SE_I2C_SCL_COUNTERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_i2c_dev*)* @qcom_geni_i2c_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_i2c_conf(%struct.geni_i2c_dev* %0) #0 {
  %2 = alloca %struct.geni_i2c_dev*, align 8
  %3 = alloca %struct.geni_i2c_clk_fld*, align 8
  %4 = alloca i32, align 4
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %2, align 8
  %5 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %5, i32 0, i32 1
  %7 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %6, align 8
  store %struct.geni_i2c_clk_fld* %7, %struct.geni_i2c_clk_fld** %3, align 8
  %8 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SE_GENI_CLK_SEL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 0, i64 %13)
  %15 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %3, align 8
  %16 = getelementptr inbounds %struct.geni_i2c_clk_fld, %struct.geni_i2c_clk_fld* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CLK_DIV_SHFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @SER_CLK_EN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %24 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GENI_SER_M_CLK_CFG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %22, i64 %28)
  %30 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %3, align 8
  %31 = getelementptr inbounds %struct.geni_i2c_clk_fld, %struct.geni_i2c_clk_fld* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HIGH_COUNTER_SHFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %3, align 8
  %36 = getelementptr inbounds %struct.geni_i2c_clk_fld, %struct.geni_i2c_clk_fld* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LOW_COUNTER_SHFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.geni_i2c_clk_fld*, %struct.geni_i2c_clk_fld** %3, align 8
  %43 = getelementptr inbounds %struct.geni_i2c_clk_fld, %struct.geni_i2c_clk_fld* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %2, align 8
  %49 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SE_I2C_SCL_COUNTERS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %47, i64 %53)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
