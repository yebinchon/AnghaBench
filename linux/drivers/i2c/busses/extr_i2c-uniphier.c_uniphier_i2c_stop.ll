; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier.c_uniphier_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@UNIPHIER_I2C_DTRM_STO = common dso_local global i32 0, align 4
@UNIPHIER_I2C_DTRM_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @uniphier_i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_i2c_stop(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %4 = load i32, i32* @UNIPHIER_I2C_DTRM_STO, align 4
  %5 = load i32, i32* @UNIPHIER_I2C_DTRM_NACK, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @uniphier_i2c_send_byte(%struct.i2c_adapter* %3, i32 %6)
  ret i32 %7
}

declare dso_local i32 @uniphier_i2c_send_byte(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
