; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32, i32 }

@STM32H7_ADC_DIFSEL = common dso_local global i32 0, align 4
@STM32H7_ADC_PCSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_adc*)* @stm32h7_adc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_adc_prepare(%struct.stm32_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %3, align 8
  %6 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %7 = call i32 @stm32h7_adc_exit_pwr_down(%struct.stm32_adc* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %14 = call i32 @stm32h7_adc_selfcalib(%struct.stm32_adc* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %54

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %21 = load i32, i32* @STM32H7_ADC_DIFSEL, align 4
  %22 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stm32_adc_writel(%struct.stm32_adc* %20, i32 %21, i32 %24)
  %26 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %27 = call i32 @stm32h7_adc_enable(%struct.stm32_adc* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %54

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %36 = call i32 @stm32h7_adc_restore_selfcalib(%struct.stm32_adc* %35)
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %39 = call i32 @stm32h7_adc_read_selfcalib(%struct.stm32_adc* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %51

44:                                               ; preds = %40
  %45 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %46 = load i32, i32* @STM32H7_ADC_PCSEL, align 4
  %47 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %48 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @stm32_adc_writel(%struct.stm32_adc* %45, i32 %46, i32 %49)
  store i32 0, i32* %2, align 4
  br label %58

51:                                               ; preds = %43
  %52 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %53 = call i32 @stm32h7_adc_disable(%struct.stm32_adc* %52)
  br label %54

54:                                               ; preds = %51, %30, %17
  %55 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %56 = call i32 @stm32h7_adc_enter_pwr_down(%struct.stm32_adc* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %44, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @stm32h7_adc_exit_pwr_down(%struct.stm32_adc*) #1

declare dso_local i32 @stm32h7_adc_selfcalib(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32h7_adc_enable(%struct.stm32_adc*) #1

declare dso_local i32 @stm32h7_adc_restore_selfcalib(%struct.stm32_adc*) #1

declare dso_local i32 @stm32h7_adc_read_selfcalib(%struct.stm32_adc*) #1

declare dso_local i32 @stm32h7_adc_disable(%struct.stm32_adc*) #1

declare dso_local i32 @stm32h7_adc_enter_pwr_down(%struct.stm32_adc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
