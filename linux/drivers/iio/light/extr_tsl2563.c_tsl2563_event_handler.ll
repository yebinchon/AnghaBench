; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tsl2563_chip = type { i32 }

@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_EITHER = common dso_local global i32 0, align 4
@TSL2563_CMD = common dso_local global i32 0, align 4
@TSL2563_CLEARINT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsl2563_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2563_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.tsl2563_chip*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.iio_dev*
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.tsl2563_chip* @iio_priv(%struct.iio_dev* %9)
  store %struct.tsl2563_chip* %10, %struct.tsl2563_chip** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = load i32, i32* @IIO_INTENSITY, align 4
  %13 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %14 = load i32, i32* @IIO_EV_DIR_EITHER, align 4
  %15 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %12, i32 0, i32 %13, i32 %14)
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call i32 @iio_get_time_ns(%struct.iio_dev* %16)
  %18 = call i32 @iio_push_event(%struct.iio_dev* %11, i32 %15, i32 %17)
  %19 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %6, align 8
  %20 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TSL2563_CMD, align 4
  %23 = load i32, i32* @TSL2563_CLEARINT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @i2c_smbus_write_byte(i32 %21, i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local %struct.tsl2563_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
