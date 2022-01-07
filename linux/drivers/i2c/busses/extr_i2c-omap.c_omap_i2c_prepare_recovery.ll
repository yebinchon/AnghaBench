; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_prepare_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_prepare_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.omap_i2c_dev = type { i32 }

@OMAP_I2C_SYSTEST_REG = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_ST_EN = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_TMODE_SHIFT = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_SCL_O = common dso_local global i32 0, align 4
@OMAP_I2C_SYSTEST_SDA_O = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @omap_i2c_prepare_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_i2c_prepare_recovery(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.omap_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = call %struct.omap_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %5)
  store %struct.omap_i2c_dev* %6, %struct.omap_i2c_dev** %3, align 8
  %7 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %8 = load i32, i32* @OMAP_I2C_SYSTEST_REG, align 4
  %9 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @OMAP_I2C_SYSTEST_ST_EN, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @OMAP_I2C_SYSTEST_TMODE_SHIFT, align 4
  %14 = shl i32 3, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @OMAP_I2C_SYSTEST_SCL_O, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @OMAP_I2C_SYSTEST_SDA_O, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %24 = load i32, i32* @OMAP_I2C_SYSTEST_REG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @omap_i2c_write_reg(%struct.omap_i2c_dev* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local %struct.omap_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i32 @omap_i2c_write_reg(%struct.omap_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
