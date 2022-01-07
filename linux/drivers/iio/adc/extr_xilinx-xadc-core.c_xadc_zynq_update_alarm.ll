; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_update_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_update_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i32 }

@XADC_ZYNQ_REG_INTSTS = common dso_local global i32 0, align 4
@XADC_ZYNQ_INT_ALARM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xadc*, i32)* @xadc_zynq_update_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xadc_zynq_update_alarm(%struct.xadc* %0, i32 %1) #0 {
  %3 = alloca %struct.xadc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xadc* %0, %struct.xadc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 8
  %9 = shl i32 %8, 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 240
  %12 = lshr i32 %11, 1
  %13 = or i32 %9, %12
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 7
  %16 = or i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.xadc*, %struct.xadc** %3, align 8
  %18 = getelementptr inbounds %struct.xadc, %struct.xadc* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.xadc*, %struct.xadc** %3, align 8
  %22 = load i32, i32* @XADC_ZYNQ_REG_INTSTS, align 4
  %23 = call i32 @xadc_read_reg(%struct.xadc* %21, i32 %22, i32* %6)
  %24 = load %struct.xadc*, %struct.xadc** %3, align 8
  %25 = load i32, i32* @XADC_ZYNQ_REG_INTSTS, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @xadc_write_reg(%struct.xadc* %24, i32 %25, i32 %28)
  %30 = load %struct.xadc*, %struct.xadc** %3, align 8
  %31 = load i32, i32* @XADC_ZYNQ_INT_ALARM_MASK, align 4
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @XADC_ZYNQ_INT_ALARM_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @xadc_zynq_update_intmsk(%struct.xadc* %30, i32 %31, i32 %35)
  %37 = load %struct.xadc*, %struct.xadc** %3, align 8
  %38 = getelementptr inbounds %struct.xadc, %struct.xadc* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @xadc_zynq_update_intmsk(%struct.xadc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
