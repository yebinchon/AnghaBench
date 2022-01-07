; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_adc = type { i64, i32, i64, i32 }

@STMPE_ADC_LAST_NR = common dso_local global i64 0, align 8
@STMPE_REG_ADC_INT_STA = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@STMPE_TEMP_CHANNEL = common dso_local global i64 0, align 8
@STMPE_REG_TEMP_DATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stmpe_adc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_adc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmpe_adc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.stmpe_adc*
  store %struct.stmpe_adc* %10, %struct.stmpe_adc** %6, align 8
  %11 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %12 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @STMPE_ADC_LAST_NR, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %18 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @STMPE_REG_ADC_INT_STA, align 4
  %21 = call i32 @stmpe_reg_read(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %24 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @STMPE_ADC_CH(i64 %25)
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %16
  %32 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %33 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %36 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @STMPE_REG_ADC_DATA_CH(i64 %37)
  %39 = call i32 @stmpe_block_read(i32 %34, i32 %38, i32 2, i32* %7)
  %40 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %41 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @STMPE_REG_ADC_INT_STA, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @stmpe_reg_write(i32 %42, i32 %43, i32 %44)
  br label %61

46:                                               ; preds = %2
  %47 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %48 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @STMPE_TEMP_CHANNEL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %54 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @STMPE_REG_TEMP_DATA, align 4
  %57 = call i32 @stmpe_block_read(i32 %55, i32 %56, i32 2, i32* %7)
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @IRQ_NONE, align 4
  store i32 %59, i32* %3, align 4
  br label %70

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @be16_to_cpu(i32 %62)
  %64 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %65 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.stmpe_adc*, %struct.stmpe_adc** %6, align 8
  %67 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %66, i32 0, i32 1
  %68 = call i32 @complete(i32* %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %58, %29
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @stmpe_reg_read(i32, i32) #1

declare dso_local i32 @STMPE_ADC_CH(i64) #1

declare dso_local i32 @stmpe_block_read(i32, i32, i32, i32*) #1

declare dso_local i32 @STMPE_REG_ADC_DATA_CH(i64) #1

declare dso_local i32 @stmpe_reg_write(i32, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
