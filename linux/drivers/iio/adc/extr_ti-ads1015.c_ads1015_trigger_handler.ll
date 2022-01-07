; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32, i32 }
%struct.ads1015_data = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ads1015_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ads1015_data*, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %13, %struct.iio_poll_func** %5, align 8
  %14 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %15 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %14, i32 0, i32 0
  %16 = load %struct.iio_dev*, %struct.iio_dev** %15, align 8
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.ads1015_data* %18, %struct.ads1015_data** %7, align 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 32)
  %21 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %22 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @find_first_bit(i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ads1015_get_adc_result(%struct.ads1015_data* %31, i32 %32, i32* %11)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %38 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %44 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = call i32 @iio_get_time_ns(%struct.iio_dev* %48)
  %50 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %46, i32* %47, i32 %49)
  br label %51

51:                                               ; preds = %40, %36
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iio_trigger_notify_done(i32 %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @ads1015_get_adc_result(%struct.ads1015_data*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
