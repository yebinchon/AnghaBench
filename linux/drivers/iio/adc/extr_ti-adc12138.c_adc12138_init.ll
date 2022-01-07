; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc12138 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ADC12138_MODE_AUTO_CAL = common dso_local global i32 0, align 4
@ADC12138_STATUS_CAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Auto Cal sequence is still in progress: %#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ADC12138_MODE_ACQUISITION_TIME_6 = common dso_local global i32 0, align 4
@ADC12138_MODE_ACQUISITION_TIME_10 = common dso_local global i32 0, align 4
@ADC12138_MODE_ACQUISITION_TIME_18 = common dso_local global i32 0, align 4
@ADC12138_MODE_ACQUISITION_TIME_34 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc12138*)* @adc12138_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc12138_init(%struct.adc12138* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adc12138*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adc12138* %0, %struct.adc12138** %3, align 8
  %8 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %9 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %8, i32 0, i32 2
  %10 = call i32 @reinit_completion(i32* %9)
  %11 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %12 = load i32, i32* @ADC12138_MODE_AUTO_CAL, align 4
  %13 = call i32 @adc12138_mode_programming(%struct.adc12138* %11, i32 %12, i32* %7, i32 1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %20 = call i32 @adc12138_read_status(%struct.adc12138* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %18
  %26 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %27 = call i32 @msecs_to_jiffies(i32 100)
  %28 = call i32 @adc12138_wait_eoc(%struct.adc12138* %26, i32 %27)
  %29 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %30 = call i32 @adc12138_read_status(%struct.adc12138* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ADC12138_STATUS_CAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %37 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %25
  %45 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %46 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %56 [
    i32 6, label %48
    i32 10, label %50
    i32 18, label %52
    i32 34, label %54
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @ADC12138_MODE_ACQUISITION_TIME_6, align 4
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @ADC12138_MODE_ACQUISITION_TIME_10, align 4
  store i32 %51, i32* %6, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load i32, i32* @ADC12138_MODE_ACQUISITION_TIME_18, align 4
  store i32 %53, i32* %6, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load i32, i32* @ADC12138_MODE_ACQUISITION_TIME_34, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %54, %52, %50, %48
  %60 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @adc12138_mode_programming(%struct.adc12138* %60, i32 %61, i32* %7, i32 1)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %56, %35, %23, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @adc12138_mode_programming(%struct.adc12138*, i32, i32*, i32) #1

declare dso_local i32 @adc12138_read_status(%struct.adc12138*) #1

declare dso_local i32 @adc12138_wait_eoc(%struct.adc12138*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
