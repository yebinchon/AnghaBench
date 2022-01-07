; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_setclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_setclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i2c = type { i64 }

@CDNS_I2C_CR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_CR_DIVA_MASK = common dso_local global i32 0, align 4
@CDNS_I2C_CR_DIVB_MASK = common dso_local global i32 0, align 4
@CDNS_I2C_CR_DIVA_SHIFT = common dso_local global i32 0, align 4
@CDNS_I2C_CR_DIVB_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.cdns_i2c*)* @cdns_i2c_setclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i2c_setclk(i64 %0, %struct.cdns_i2c* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.cdns_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.cdns_i2c* %1, %struct.cdns_i2c** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %12 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @cdns_i2c_calc_divs(i64* %10, i64 %14, i32* %6, i32* %7)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %22 = call i32 @cdns_i2c_readreg(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @CDNS_I2C_CR_DIVA_MASK, align 4
  %24 = load i32, i32* @CDNS_I2C_CR_DIVB_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CDNS_I2C_CR_DIVA_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CDNS_I2C_CR_DIVB_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %40 = call i32 @cdns_i2c_writereg(i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %20, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @cdns_i2c_calc_divs(i64*, i64, i32*, i32*) #1

declare dso_local i32 @cdns_i2c_readreg(i32) #1

declare dso_local i32 @cdns_i2c_writereg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
