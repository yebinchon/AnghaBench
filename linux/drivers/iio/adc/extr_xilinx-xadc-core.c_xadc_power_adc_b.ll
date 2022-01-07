; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_power_adc_b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_power_adc_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i32 }

@XADC_CONF2_PD_ADC_B = common dso_local global i32 0, align 4
@XADC_REG_CONF2 = common dso_local global i32 0, align 4
@XADC_CONF2_PD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xadc*, i32)* @xadc_power_adc_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_power_adc_b(%struct.xadc* %0, i32 %1) #0 {
  %3 = alloca %struct.xadc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xadc* %0, %struct.xadc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %9 [
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* @XADC_CONF2_PD_ADC_B, align 4
  store i32 %8, i32* %5, align 4
  br label %10

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = load %struct.xadc*, %struct.xadc** %3, align 8
  %12 = load i32, i32* @XADC_REG_CONF2, align 4
  %13 = load i32, i32* @XADC_CONF2_PD_MASK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @xadc_update_adc_reg(%struct.xadc* %11, i32 %12, i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @xadc_update_adc_reg(%struct.xadc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
