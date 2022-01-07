; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_buffer_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_buffer_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { %struct.iio_chan_spec* }
%struct.iio_chan_spec = type { i32 }
%struct.hts221_hw = type { i32, i32 }

@HTS221_DATA_SIZE = common dso_local global i32 0, align 4
@HTS221_SENSOR_H = common dso_local global i64 0, align 8
@HTS221_SENSOR_T = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hts221_buffer_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_buffer_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_poll_func*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.hts221_hw*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @HTS221_DATA_SIZE, align 4
  %13 = mul nsw i32 2, %12
  %14 = call i32 @ALIGN(i32 %13, i32 4)
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %20, %struct.iio_poll_func** %7, align 8
  %21 = load %struct.iio_poll_func*, %struct.iio_poll_func** %7, align 8
  %22 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %21, i32 0, i32 0
  %23 = load %struct.iio_dev*, %struct.iio_dev** %22, align 8
  store %struct.iio_dev* %23, %struct.iio_dev** %8, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = call %struct.hts221_hw* @iio_priv(%struct.iio_dev* %24)
  store %struct.hts221_hw* %25, %struct.hts221_hw** %9, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 0
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %27, align 8
  %29 = load i64, i64* @HTS221_SENSOR_H, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i64 %29
  store %struct.iio_chan_spec* %30, %struct.iio_chan_spec** %10, align 8
  %31 = load %struct.hts221_hw*, %struct.hts221_hw** %9, align 8
  %32 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HTS221_DATA_SIZE, align 4
  %38 = call i32 @regmap_bulk_read(i32 %33, i32 %36, i32* %18, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %67

42:                                               ; preds = %2
  %43 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 0
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %44, align 8
  %46 = load i64, i64* @HTS221_SENSOR_T, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i64 %46
  store %struct.iio_chan_spec* %47, %struct.iio_chan_spec** %10, align 8
  %48 = load %struct.hts221_hw*, %struct.hts221_hw** %9, align 8
  %49 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HTS221_DATA_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %18, i64 %55
  %57 = load i32, i32* @HTS221_DATA_SIZE, align 4
  %58 = call i32 @regmap_bulk_read(i32 %50, i32 %53, i32* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  br label %67

62:                                               ; preds = %42
  %63 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %65 = call i32 @iio_get_time_ns(%struct.iio_dev* %64)
  %66 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %63, i32* %18, i32 %65)
  br label %67

67:                                               ; preds = %62, %61, %41
  %68 = load %struct.hts221_hw*, %struct.hts221_hw** %9, align 8
  %69 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iio_trigger_notify_done(i32 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  %73 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

declare dso_local i32 @ALIGN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.hts221_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
