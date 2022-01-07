; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_set_scl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_set_scl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.davinci_i2c_dev = type { i32 }

@DAVINCI_I2C_DSET_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_DSET_PDSET0 = common dso_local global i32 0, align 4
@DAVINCI_I2C_DCLR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_DCLR_PDCLR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, i32)* @davinci_i2c_set_scl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_i2c_set_scl(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.davinci_i2c_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %7 = call %struct.davinci_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %6)
  store %struct.davinci_i2c_dev* %7, %struct.davinci_i2c_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %5, align 8
  %12 = load i32, i32* @DAVINCI_I2C_DSET_REG, align 4
  %13 = load i32, i32* @DAVINCI_I2C_DSET_PDSET0, align 4
  %14 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %5, align 8
  %17 = load i32, i32* @DAVINCI_I2C_DCLR_REG, align 4
  %18 = load i32, i32* @DAVINCI_I2C_DCLR_PDCLR0, align 4
  %19 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  ret void
}

declare dso_local %struct.davinci_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
