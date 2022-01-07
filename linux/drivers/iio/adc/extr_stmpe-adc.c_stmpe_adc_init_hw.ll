; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stmpe-adc.c_stmpe_adc_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_adc = type { %struct.stmpe* }
%struct.stmpe = type { i32 }

@STMPE_BLOCK_ADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not enable clock for ADC\0A\00", align 1
@STMPE_REG_TEMP_TH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe_adc*)* @stmpe_adc_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_adc_init_hw(%struct.stmpe_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe_adc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmpe*, align 8
  store %struct.stmpe_adc* %0, %struct.stmpe_adc** %3, align 8
  %6 = load %struct.stmpe_adc*, %struct.stmpe_adc** %3, align 8
  %7 = getelementptr inbounds %struct.stmpe_adc, %struct.stmpe_adc* %6, i32 0, i32 0
  %8 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  store %struct.stmpe* %8, %struct.stmpe** %5, align 8
  %9 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %10 = load i32, i32* @STMPE_BLOCK_ADC, align 4
  %11 = call i32 @stmpe_enable(%struct.stmpe* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %16 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %22 = call i32 @stmpe811_adc_common_init(%struct.stmpe* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %27 = load i32, i32* @STMPE_BLOCK_ADC, align 4
  %28 = call i32 @stmpe_disable(%struct.stmpe* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %20
  %31 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %32 = load i64, i64* @STMPE_REG_TEMP_TH, align 8
  %33 = call i32 @stmpe_reg_write(%struct.stmpe* %31, i64 %32, i32 0)
  %34 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %35 = load i64, i64* @STMPE_REG_TEMP_TH, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @stmpe_reg_write(%struct.stmpe* %34, i64 %36, i32 0)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %30, %25, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @stmpe_enable(%struct.stmpe*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stmpe811_adc_common_init(%struct.stmpe*) #1

declare dso_local i32 @stmpe_disable(%struct.stmpe*, i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
