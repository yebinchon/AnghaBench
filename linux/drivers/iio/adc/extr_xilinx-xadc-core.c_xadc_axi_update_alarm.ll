; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_axi_update_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_axi_update_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i32 }

@XADC_AXI_REG_IPIER = common dso_local global i32 0, align 4
@XADC_AXI_INT_ALARM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xadc*, i32)* @xadc_axi_update_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xadc_axi_update_alarm(%struct.xadc* %0, i32 %1) #0 {
  %3 = alloca %struct.xadc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.xadc* %0, %struct.xadc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 7
  %9 = shl i32 %8, 1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 8
  %12 = lshr i32 %11, 3
  %13 = or i32 %9, %12
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 240
  %16 = shl i32 %15, 6
  %17 = or i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.xadc*, %struct.xadc** %3, align 8
  %19 = getelementptr inbounds %struct.xadc, %struct.xadc* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.xadc*, %struct.xadc** %3, align 8
  %23 = load i32, i32* @XADC_AXI_REG_IPIER, align 4
  %24 = call i32 @xadc_read_reg(%struct.xadc* %22, i32 %23, i32* %5)
  %25 = load i32, i32* @XADC_AXI_INT_ALARM_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.xadc*, %struct.xadc** %3, align 8
  %33 = load i32, i32* @XADC_AXI_REG_IPIER, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @xadc_write_reg(%struct.xadc* %32, i32 %33, i32 %34)
  %36 = load %struct.xadc*, %struct.xadc** %3, align 8
  %37 = getelementptr inbounds %struct.xadc, %struct.xadc* %36, i32 0, i32 0
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @xadc_write_reg(%struct.xadc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
