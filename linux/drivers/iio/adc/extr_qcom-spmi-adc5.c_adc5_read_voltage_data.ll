; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_read_voltage_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_read_voltage_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc5_chip = type { i32 }

@ADC5_USR_DATA0 = common dso_local global i32 0, align 4
@ADC5_USR_DATA1 = common dso_local global i32 0, align 4
@ADC5_USR_DATA_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid data:0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"voltage raw code:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc5_chip*, i32*)* @adc5_read_voltage_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc5_read_voltage_data(%struct.adc5_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adc5_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adc5_chip* %0, %struct.adc5_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %10 = load i32, i32* @ADC5_USR_DATA0, align 4
  %11 = call i32 @adc5_read(%struct.adc5_chip* %9, i32 %10, i32* %7, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %18 = load i32, i32* @ADC5_USR_DATA1, align 4
  %19 = call i32 @adc5_read(%struct.adc5_chip* %17, i32 %18, i32* %8, i32 4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ADC5_USR_DATA_CHECK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %24
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %34, %22, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @adc5_read(%struct.adc5_chip*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
