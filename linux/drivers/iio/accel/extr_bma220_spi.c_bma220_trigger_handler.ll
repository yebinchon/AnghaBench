; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma220_spi.c_bma220_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.bma220_data = type { i32*, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@BMA220_REG_ACCEL_X = common dso_local global i32 0, align 4
@BMA220_READ_MASK = common dso_local global i32 0, align 4
@bma220_channels = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bma220_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma220_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_poll_func*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.bma220_data*, align 8
  %9 = alloca %struct.spi_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %11, %struct.iio_poll_func** %6, align 8
  %12 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %13 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %12, i32 0, i32 1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  store %struct.iio_dev* %14, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.bma220_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.bma220_data* %16, %struct.bma220_data** %8, align 8
  %17 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %18 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %17, i32 0, i32 3
  %19 = load %struct.spi_device*, %struct.spi_device** %18, align 8
  store %struct.spi_device* %19, %struct.spi_device** %9, align 8
  %20 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %21 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @BMA220_REG_ACCEL_X, align 4
  %24 = load i32, i32* @BMA220_READ_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %27 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %31 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %32 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %35 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @bma220_channels, align 4
  %38 = call i64 @ARRAY_SIZE(i32 %37)
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @spi_write_then_read(%struct.spi_device* %30, i32* %33, i32 1, i32 %36, i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  br label %53

44:                                               ; preds = %2
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %47 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %50 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %43
  %54 = load %struct.bma220_data*, %struct.bma220_data** %8, align 8
  %55 = getelementptr inbounds %struct.bma220_data, %struct.bma220_data* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @iio_trigger_notify_done(i32 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local %struct.bma220_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
