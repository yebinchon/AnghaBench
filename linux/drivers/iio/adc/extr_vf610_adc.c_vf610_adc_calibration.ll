; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_adc = type { %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VF610_ADC_AIEN = common dso_local global i32 0, align 4
@VF610_ADC_CONV_DISABLE = common dso_local global i32 0, align 4
@VF610_REG_ADC_HC0 = common dso_local global i64 0, align 8
@VF610_REG_ADC_GC = common dso_local global i64 0, align 8
@VF610_ADC_CAL = common dso_local global i32 0, align 4
@VF610_ADC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout for adc calibration\0A\00", align 1
@VF610_REG_ADC_GS = common dso_local global i64 0, align 8
@VF610_ADC_CALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ADC calibration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_adc*)* @vf610_adc_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_adc_calibration(%struct.vf610_adc* %0) #0 {
  %2 = alloca %struct.vf610_adc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vf610_adc* %0, %struct.vf610_adc** %2, align 8
  %5 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %6 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  %12 = load i32, i32* @VF610_ADC_AIEN, align 4
  %13 = load i32, i32* @VF610_ADC_CONV_DISABLE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %17 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VF610_REG_ADC_HC0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %23 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VF610_REG_ADC_GC, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @VF610_ADC_CAL, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %32 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VF610_REG_ADC_GC, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %38 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %37, i32 0, i32 3
  %39 = load i32, i32* @VF610_ADC_TIMEOUT, align 4
  %40 = call i32 @wait_for_completion_timeout(i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %11
  %43 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %44 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %11
  %48 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %49 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VF610_REG_ADC_GS, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @VF610_ADC_CALF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %60 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %47
  %64 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %65 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %10
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
