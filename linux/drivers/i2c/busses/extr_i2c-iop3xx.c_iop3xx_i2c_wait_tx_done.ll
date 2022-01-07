; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_wait_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_wait_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i32 }

@IOP3XX_ISR_TXEMPTY = common dso_local global i32 0, align 4
@IOP3XX_ISR_ALD = common dso_local global i32 0, align 4
@IOP3XX_ISR_BERRD = common dso_local global i32 0, align 4
@any_bits_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_iop3xx_data*, i32*)* @iop3xx_i2c_wait_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_wait_tx_done(%struct.i2c_algo_iop3xx_data* %0, i32* %1) #0 {
  %3 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %3, align 8
  %6 = load i32, i32* @IOP3XX_ISR_TXEMPTY, align 4
  %7 = load i32, i32* @IOP3XX_ISR_ALD, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @IOP3XX_ISR_BERRD, align 4
  %10 = or i32 %8, %9
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @any_bits_set, align 4
  %13 = call i32 @iop3xx_i2c_wait_event(%struct.i2c_algo_iop3xx_data* %5, i32 %10, i32* %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @iop3xx_i2c_wait_event(%struct.i2c_algo_iop3xx_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
