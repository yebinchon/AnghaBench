; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_recover_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_recover_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.st_i2c_dev = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Trying to recover bus\0A\00", align 1
@SSC_IEN = common dso_local global i64 0, align 8
@SSC_CTL_EN = common dso_local global i32 0, align 4
@SSC_CTL_MS = common dso_local global i32 0, align 4
@SSC_CTL_EN_RX_FIFO = common dso_local global i32 0, align 4
@SSC_CTL_EN_TX_FIFO = common dso_local global i32 0, align 4
@SSC_CTL = common dso_local global i64 0, align 8
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_I2C_I2CM = common dso_local global i32 0, align 4
@SSC_TBUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @st_i2c_recover_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_recover_bus(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.st_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = call %struct.st_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %5)
  store %struct.st_i2c_dev* %6, %struct.st_i2c_dev** %3, align 8
  %7 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %8 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSC_IEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 0, i64 %15)
  %17 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %18 = call i32 @st_i2c_hw_config(%struct.st_i2c_dev* %17)
  %19 = load i32, i32* @SSC_CTL_EN, align 4
  %20 = load i32, i32* @SSC_CTL_MS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SSC_CTL_EN_RX_FIFO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SSC_CTL_EN_TX_FIFO, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %27 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSC_CTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @st_i2c_set_bits(i64 %30, i32 %31)
  %33 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSC_I2C, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @SSC_I2C_I2CM, align 4
  %39 = call i32 @st_i2c_clr_bits(i64 %37, i32 %38)
  %40 = call i32 @usleep_range(i32 8000, i32 10000)
  %41 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SSC_TBUF, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 0, i64 %45)
  %47 = call i32 @usleep_range(i32 2000, i32 4000)
  %48 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %49 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SSC_I2C, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @SSC_I2C_I2CM, align 4
  %54 = call i32 @st_i2c_set_bits(i64 %52, i32 %53)
  ret i32 0
}

declare dso_local %struct.st_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @st_i2c_hw_config(%struct.st_i2c_dev*) #1

declare dso_local i32 @st_i2c_set_bits(i64, i32) #1

declare dso_local i32 @st_i2c_clr_bits(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
