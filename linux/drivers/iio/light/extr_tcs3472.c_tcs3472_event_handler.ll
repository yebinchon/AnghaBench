; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tcs3472_data = type { i32 }

@TCS3472_STATUS = common dso_local global i32 0, align 4
@TCS3472_STATUS_AINT = common dso_local global i32 0, align 4
@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@TCS3472_INTR_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tcs3472_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3472_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.tcs3472_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iio_dev*
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.tcs3472_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.tcs3472_data* %11, %struct.tcs3472_data** %6, align 8
  %12 = load %struct.tcs3472_data*, %struct.tcs3472_data** %6, align 8
  %13 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCS3472_STATUS, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TCS3472_STATUS_AINT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = load i32, i32* @IIO_INTENSITY, align 4
  %27 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %28 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %29 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = call i32 @iio_get_time_ns(%struct.iio_dev* %30)
  %32 = call i32 @iio_push_event(%struct.iio_dev* %25, i32 %29, i32 %31)
  %33 = load %struct.tcs3472_data*, %struct.tcs3472_data** %6, align 8
  %34 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TCS3472_INTR_CLEAR, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %19, %2
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local %struct.tcs3472_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
