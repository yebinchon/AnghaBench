; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_threaded_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_threaded_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max44009_data = type { i32 }

@MAX44009_REG_INT_STATUS = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max44009_threaded_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44009_threaded_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.max44009_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.max44009_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.max44009_data* %12, %struct.max44009_data** %7, align 8
  %13 = load %struct.max44009_data*, %struct.max44009_data** %7, align 8
  %14 = getelementptr inbounds %struct.max44009_data, %struct.max44009_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX44009_REG_INT_STATUS, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %22 = load i32, i32* @IIO_LIGHT, align 4
  %23 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %24 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %25 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %22, i32 0, i32 %23, i32 %24)
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = call i32 @iio_get_time_ns(%struct.iio_dev* %26)
  %28 = call i32 @iio_push_event(%struct.iio_dev* %21, i32 %25, i32 %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.max44009_data* @iio_priv(%struct.iio_dev*) #1

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
