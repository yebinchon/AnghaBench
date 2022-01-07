; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_transaction_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_transaction_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i64 }

@CR_OFFSET = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTART = common dso_local global i64 0, align 8
@IOP3XX_ICR_TBYTE = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTOP = common dso_local global i64 0, align 8
@IOP3XX_ICR_SCLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_algo_iop3xx_data*)* @iop3xx_i2c_transaction_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop3xx_i2c_transaction_cleanup(%struct.i2c_algo_iop3xx_data* %0) #0 {
  %2 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %3 = alloca i64, align 8
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %2, align 8
  %4 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %5 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CR_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @__raw_readl(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @IOP3XX_ICR_MSTART, align 8
  %11 = load i64, i64* @IOP3XX_ICR_TBYTE, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @IOP3XX_ICR_MSTOP, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @IOP3XX_ICR_SCLEN, align 8
  %16 = or i64 %14, %15
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %22 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CR_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_writel(i64 %20, i64 %25)
  ret void
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
