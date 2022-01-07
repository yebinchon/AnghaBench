; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_do_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_do_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc5_chip = type { i32, i32, i64 }
%struct.adc5_channel_prop = type { i32 }
%struct.iio_chan_spec = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ADC configure failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"EOC bit not set\0A\00", align 1
@ADC5_CONV_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Did not get completion timeout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc5_chip*, %struct.adc5_channel_prop*, %struct.iio_chan_spec*, i32*, i32*)* @adc5_do_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc5_do_conversion(%struct.adc5_chip* %0, %struct.adc5_channel_prop* %1, %struct.iio_chan_spec* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.adc5_chip*, align 8
  %7 = alloca %struct.adc5_channel_prop*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.adc5_chip* %0, %struct.adc5_chip** %6, align 8
  store %struct.adc5_channel_prop* %1, %struct.adc5_channel_prop** %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %13 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %16 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %7, align 8
  %17 = call i32 @adc5_configure(%struct.adc5_chip* %15, %struct.adc5_channel_prop* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %57

23:                                               ; preds = %5
  %24 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %25 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %30 = call i32 @adc5_poll_wait_eoc(%struct.adc5_chip* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %57

35:                                               ; preds = %28
  br label %53

36:                                               ; preds = %23
  %37 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %38 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %37, i32 0, i32 1
  %39 = load i32, i32* @ADC5_CONV_TIMEOUT, align 4
  %40 = call i32 @wait_for_completion_timeout(i32* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %46 = call i32 @adc5_poll_wait_eoc(%struct.adc5_chip* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %57

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @adc5_read_voltage_data(%struct.adc5_chip* %54, i32* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %49, %33, %20
  %58 = load %struct.adc5_chip*, %struct.adc5_chip** %6, align 8
  %59 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adc5_configure(%struct.adc5_chip*, %struct.adc5_channel_prop*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @adc5_poll_wait_eoc(%struct.adc5_chip*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @adc5_read_voltage_data(%struct.adc5_chip*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
