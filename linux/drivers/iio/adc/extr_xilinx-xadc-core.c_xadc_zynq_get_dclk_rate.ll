; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_get_dclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_zynq_get_dclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i32 }

@XADC_ZYNQ_REG_CFG = common dso_local global i32 0, align 4
@XADC_ZYNQ_CFG_TCKRATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xadc*)* @xadc_zynq_get_dclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xadc_zynq_get_dclk_rate(%struct.xadc* %0) #0 {
  %2 = alloca %struct.xadc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xadc* %0, %struct.xadc** %2, align 8
  %5 = load %struct.xadc*, %struct.xadc** %2, align 8
  %6 = load i32, i32* @XADC_ZYNQ_REG_CFG, align 4
  %7 = call i32 @xadc_read_reg(%struct.xadc* %5, i32 %6, i32* %4)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @XADC_ZYNQ_CFG_TCKRATE_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %14 [
    i32 129, label %11
    i32 128, label %12
    i32 130, label %13
  ]

11:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %15

12:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  br label %15

13:                                               ; preds = %1
  store i32 16, i32* %3, align 4
  br label %15

14:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %11
  %16 = load %struct.xadc*, %struct.xadc** %2, align 8
  %17 = getelementptr inbounds %struct.xadc, %struct.xadc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_get_rate(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = udiv i32 %19, %20
  %22 = zext i32 %21 to i64
  ret i64 %22
}

declare dso_local i32 @xadc_read_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
