; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_start_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_start_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_gpadc = type { i32, i32, i32 }

@PALMAS_GPADC_BASE = common dso_local global i32 0, align 4
@PALMAS_GPADC_SW_SELECT = common dso_local global i32 0, align 4
@PALMAS_GPADC_SW_SELECT_SW_START_CONV0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SELECT_SW_START write failed: %d\0A\00", align 1
@PALMAS_ADC_CONVERSION_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"conversion not completed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PALMAS_GPADC_SW_CONV0_LSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"SW_CONV0_LSB read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_gpadc*, i32)* @palmas_gpadc_start_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_start_conversion(%struct.palmas_gpadc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.palmas_gpadc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.palmas_gpadc* %0, %struct.palmas_gpadc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %9 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %8, i32 0, i32 2
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %12 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %15 = load i32, i32* @PALMAS_GPADC_SW_SELECT, align 4
  %16 = load i32, i32* @PALMAS_GPADC_SW_SELECT_SW_START_CONV0, align 4
  %17 = load i32, i32* @PALMAS_GPADC_SW_SELECT_SW_START_CONV0, align 4
  %18 = call i32 @palmas_update_bits(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %23 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %30 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %29, i32 0, i32 2
  %31 = load i32, i32* @PALMAS_ADC_CONVERSION_TIMEOUT, align 4
  %32 = call i32 @wait_for_completion_timeout(i32* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %37 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %28
  %43 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %44 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PALMAS_GPADC_BASE, align 4
  %47 = load i32, i32* @PALMAS_GPADC_SW_CONV0_LSB, align 4
  %48 = call i32 @palmas_bulk_read(i32 %45, i32 %46, i32 %47, i32* %6, i32 2)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.palmas_gpadc*, %struct.palmas_gpadc** %4, align 8
  %53 = getelementptr inbounds %struct.palmas_gpadc, %struct.palmas_gpadc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 4095
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %51, %35, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @palmas_update_bits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @palmas_bulk_read(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
