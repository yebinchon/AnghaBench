; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.hdc100x_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@HDC100X_REG_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot start measurement\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot read sensor data\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdc100x_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdc100x_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.hdc100x_data*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
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
  %18 = call %struct.hdc100x_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.hdc100x_data* %18, %struct.hdc100x_data** %7, align 8
  %19 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %20 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %8, align 8
  %22 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %23 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %28 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %34 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %37 = load i32, i32* @HDC100X_REG_TEMP, align 4
  %38 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %65

45:                                               ; preds = %2
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1000
  %49 = call i32 @usleep_range(i32 %46, i32 %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %52 = call i32 @i2c_master_recv(%struct.i2c_client* %50, i32* %51, i32 4)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %65

59:                                               ; preds = %45
  %60 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = call i32 @iio_get_time_ns(%struct.iio_dev* %62)
  %64 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %60, i32* %61, i32 %63)
  br label %65

65:                                               ; preds = %59, %55, %41
  %66 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %67 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @iio_trigger_notify_done(i32 %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local %struct.hdc100x_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
