; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9055-hwmon.c_da9055_adc_manual_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9055-hwmon.c_da9055_adc_manual_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055_hwmon = type { i32, i32, %struct.da9055* }
%struct.da9055 = type { i32 }

@DA9055_ADC_TJUNC = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@chan_mux = common dso_local global i8* null, align 8
@DA9055_ADC_MAN_CONV = common dso_local global i8 0, align 1
@DA9055_REG_ADC_MAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"timeout waiting for ADC conversion interrupt\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DA9055_REG_ADC_RES_H = common dso_local global i32 0, align 4
@DA9055_REG_ADC_RES_L = common dso_local global i32 0, align 4
@DA9055_ADC_LSB_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9055_hwmon*, i8)* @da9055_adc_manual_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_adc_manual_read(%struct.da9055_hwmon* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9055_hwmon*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = alloca %struct.da9055*, align 8
  store %struct.da9055_hwmon* %0, %struct.da9055_hwmon** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %4, align 8
  %12 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %11, i32 0, i32 2
  %13 = load %struct.da9055*, %struct.da9055** %12, align 8
  store %struct.da9055* %13, %struct.da9055** %10, align 8
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @DA9055_ADC_TJUNC, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %94

22:                                               ; preds = %2
  %23 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %4, align 8
  %24 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i8*, i8** @chan_mux, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @DA9055_ADC_MAN_CONV, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %9, align 1
  %36 = load %struct.da9055*, %struct.da9055** %10, align 8
  %37 = load i32, i32* @DA9055_REG_ADC_MAN, align 4
  %38 = load i8, i8* %9, align 1
  %39 = call i32 @da9055_reg_write(%struct.da9055* %36, i32 %37, i8 zeroext %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %89

43:                                               ; preds = %22
  %44 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %4, align 8
  %45 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %44, i32 0, i32 1
  %46 = call i32 @msecs_to_jiffies(i32 500)
  %47 = call i32 @wait_for_completion_timeout(i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.da9055*, %struct.da9055** %10, align 8
  %51 = getelementptr inbounds %struct.da9055, %struct.da9055* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %89

56:                                               ; preds = %43
  %57 = load %struct.da9055*, %struct.da9055** %10, align 8
  %58 = load i32, i32* @DA9055_REG_ADC_RES_H, align 4
  %59 = call i32 @da9055_reg_read(%struct.da9055* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %89

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %7, align 2
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i32
  %68 = shl i32 %67, 2
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %8, align 2
  %70 = load %struct.da9055*, %struct.da9055** %10, align 8
  %71 = load i32, i32* @DA9055_REG_ADC_RES_L, align 4
  %72 = call i32 @da9055_reg_read(%struct.da9055* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %89

76:                                               ; preds = %63
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @DA9055_ADC_LSB_MASK, align 4
  %79 = and i32 %77, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %7, align 2
  %81 = load i16, i16* %7, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* %8, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %8, align 2
  %87 = load i16, i16* %8, align 2
  %88 = zext i16 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %76, %75, %62, %49, %42
  %90 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %4, align 8
  %91 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %19
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @da9055_reg_write(%struct.da9055*, i32, i8 zeroext) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @da9055_reg_read(%struct.da9055*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
