; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_buffer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina2xx_buffer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, i64* }
%struct.ina2xx_chip_info = type { i32, %struct.task_struct*, i32 }
%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Enabling buffer w/ scan_mask %02x, freq = %d, avg =%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected work period: %u us\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Async readout mode: %d\0A\00", align 1
@ina2xx_capture_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%s:%d-%uus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @ina2xx_buffer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_buffer_enable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ina2xx_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev* %7)
  store %struct.ina2xx_chip_info* %8, %struct.ina2xx_chip_info** %4, align 8
  %9 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %10 = call i32 @SAMPLING_PERIOD(%struct.ina2xx_chip_info* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 2
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 1000000, %18
  %20 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %21 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 2
  %30 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %31 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ina2xx_capture_thread, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = bitcast %struct.iio_dev* %35 to i8*
  %37 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.task_struct* @kthread_create(i32 %34, i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  store %struct.task_struct* %44, %struct.task_struct** %6, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %46 = call i64 @IS_ERR(%struct.task_struct* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %50 = call i32 @PTR_ERR(%struct.task_struct* %49)
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %1
  %52 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %53 = call i32 @get_task_struct(%struct.task_struct* %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %55 = call i32 @wake_up_process(%struct.task_struct* %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %57 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %4, align 8
  %58 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %57, i32 0, i32 1
  store %struct.task_struct* %56, %struct.task_struct** %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.ina2xx_chip_info* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @SAMPLING_PERIOD(%struct.ina2xx_chip_info*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local %struct.task_struct* @kthread_create(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
