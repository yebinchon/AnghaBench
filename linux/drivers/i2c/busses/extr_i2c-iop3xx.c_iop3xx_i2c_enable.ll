; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i32, i64, i64, i64 }

@IOP3XX_ICR_GCD = common dso_local global i32 0, align 4
@IOP3XX_ICR_SCLEN = common dso_local global i32 0, align 4
@IOP3XX_ICR_UE = common dso_local global i32 0, align 4
@IOP3XX_ISR_ALD = common dso_local global i32 0, align 4
@IOP3XX_ISR_BERRD = common dso_local global i32 0, align 4
@IOP3XX_ISR_RXFULL = common dso_local global i32 0, align 4
@IOP3XX_ISR_TXEMPTY = common dso_local global i32 0, align 4
@IOP3XX_ICR_ALD_IE = common dso_local global i32 0, align 4
@IOP3XX_ICR_BERR_IE = common dso_local global i32 0, align 4
@IOP3XX_ICR_RXFULL_IE = common dso_local global i32 0, align 4
@IOP3XX_ICR_TXEMPTY_IE = common dso_local global i32 0, align 4
@CR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_algo_iop3xx_data*)* @iop3xx_i2c_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop3xx_i2c_enable(%struct.i2c_algo_iop3xx_data* %0) #0 {
  %2 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %2, align 8
  %4 = load i32, i32* @IOP3XX_ICR_GCD, align 4
  %5 = load i32, i32* @IOP3XX_ICR_SCLEN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IOP3XX_ICR_UE, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %10 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @gpiod_set_raw_value(i64 %16, i32 0)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %20 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %25 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpiod_set_raw_value(i64 %26, i32 0)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @IOP3XX_ISR_ALD, align 4
  %30 = load i32, i32* @IOP3XX_ISR_BERRD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IOP3XX_ISR_RXFULL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IOP3XX_ISR_TXEMPTY, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %37 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @IOP3XX_ICR_ALD_IE, align 4
  %39 = load i32, i32* @IOP3XX_ICR_BERR_IE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IOP3XX_ICR_RXFULL_IE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IOP3XX_ICR_TXEMPTY_IE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %2, align 8
  %49 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CR_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @__raw_writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @gpiod_set_raw_value(i64, i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
