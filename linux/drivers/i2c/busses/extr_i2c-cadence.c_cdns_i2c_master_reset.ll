; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_master_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_master_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cdns_i2c* }
%struct.cdns_i2c = type { i32 }

@CDNS_I2C_IXR_ALL_INTR_MASK = common dso_local global i32 0, align 4
@CDNS_I2C_IDR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_CR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_CR_HOLD = common dso_local global i32 0, align 4
@CDNS_I2C_CR_CLR_FIFO = common dso_local global i32 0, align 4
@CDNS_I2C_XFER_SIZE_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_ISR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_SR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @cdns_i2c_master_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i2c_master_reset(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.cdns_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load %struct.cdns_i2c*, %struct.cdns_i2c** %6, align 8
  store %struct.cdns_i2c* %7, %struct.cdns_i2c** %3, align 8
  %8 = load i32, i32* @CDNS_I2C_IXR_ALL_INTR_MASK, align 4
  %9 = load i32, i32* @CDNS_I2C_IDR_OFFSET, align 4
  %10 = call i32 @cdns_i2c_writereg(i32 %8, i32 %9)
  %11 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %12 = call i32 @cdns_i2c_readreg(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CDNS_I2C_CR_HOLD, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @CDNS_I2C_CR_CLR_FIFO, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %22 = call i32 @cdns_i2c_writereg(i32 %20, i32 %21)
  %23 = load i32, i32* @CDNS_I2C_XFER_SIZE_OFFSET, align 4
  %24 = call i32 @cdns_i2c_writereg(i32 0, i32 %23)
  %25 = load i32, i32* @CDNS_I2C_ISR_OFFSET, align 4
  %26 = call i32 @cdns_i2c_readreg(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CDNS_I2C_ISR_OFFSET, align 4
  %29 = call i32 @cdns_i2c_writereg(i32 %27, i32 %28)
  %30 = load i32, i32* @CDNS_I2C_SR_OFFSET, align 4
  %31 = call i32 @cdns_i2c_readreg(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CDNS_I2C_SR_OFFSET, align 4
  %34 = call i32 @cdns_i2c_writereg(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @cdns_i2c_writereg(i32, i32) #1

declare dso_local i32 @cdns_i2c_readreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
