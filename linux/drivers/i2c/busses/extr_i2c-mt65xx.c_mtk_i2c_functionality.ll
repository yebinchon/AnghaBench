; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_functionality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_functionality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@I2C_AQ_NO_ZERO_LEN = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_EMUL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @mtk_i2c_functionality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_functionality(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %5 = load i32, i32* @I2C_AQ_NO_ZERO_LEN, align 4
  %6 = call i64 @i2c_check_quirks(%struct.i2c_adapter* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @I2C_FUNC_I2C, align 4
  %10 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = or i32 %9, %13
  store i32 %14, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @I2C_FUNC_I2C, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @i2c_check_quirks(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
