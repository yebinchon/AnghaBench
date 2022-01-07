; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_set_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_set_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.stm32_adc_regs }
%struct.stm32_adc_regs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc*)* @stm32_adc_set_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adc_set_res(%struct.stm32_adc* %0) #0 {
  %2 = alloca %struct.stm32_adc*, align 8
  %3 = alloca %struct.stm32_adc_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %2, align 8
  %5 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.stm32_adc_regs* %10, %struct.stm32_adc_regs** %3, align 8
  %11 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %12 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @stm32_adc_readl(%struct.stm32_adc* %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %23 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %24, %27
  %29 = or i32 %21, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %31 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %3, align 8
  %32 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @stm32_adc_writel(%struct.stm32_adc* %30, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
