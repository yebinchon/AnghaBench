; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_send_target_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_send_target_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_iop3xx_data = type { i64 }
%struct.i2c_msg = type { i64 }

@CR_OFFSET = common dso_local global i64 0, align 8
@MYSAR = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DBR_OFFSET = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTOP = common dso_local global i64 0, align 8
@IOP3XX_ICR_NACK = common dso_local global i64 0, align 8
@IOP3XX_ICR_MSTART = common dso_local global i64 0, align 8
@IOP3XX_ICR_TBYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_iop3xx_data*, %struct.i2c_msg*)* @iop3xx_i2c_send_target_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_send_target_addr(%struct.i2c_algo_iop3xx_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_algo_iop3xx_data* %0, %struct.i2c_algo_iop3xx_data** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %9 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CR_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @__raw_readl(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MYSAR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = call i64 @iic_cook_addr(%struct.i2c_msg* %24)
  %26 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DBR_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @__raw_writel(i64 %25, i64 %30)
  %32 = load i64, i64* @IOP3XX_ICR_MSTOP, align 8
  %33 = load i64, i64* @IOP3XX_ICR_NACK, align 8
  %34 = or i64 %32, %33
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* @IOP3XX_ICR_MSTART, align 8
  %39 = load i64, i64* @IOP3XX_ICR_TBYTE, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CR_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @__raw_writel(i64 %43, i64 %48)
  %50 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %4, align 8
  %51 = call i32 @iop3xx_i2c_wait_tx_done(%struct.i2c_algo_iop3xx_data* %50, i32* %7)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %23, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i64 @iic_cook_addr(%struct.i2c_msg*) #1

declare dso_local i32 @iop3xx_i2c_wait_tx_done(%struct.i2c_algo_iop3xx_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
