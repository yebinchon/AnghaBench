; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_ccs811.c_ccs811_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.ccs811_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CCS811_ALG_RESULT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot read sensor data\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ccs811_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccs811_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ccs811_data*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %12, %struct.iio_poll_func** %5, align 8
  %13 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %14 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %13, i32 0, i32 0
  %15 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call %struct.ccs811_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.ccs811_data* %17, %struct.ccs811_data** %7, align 8
  %18 = load %struct.ccs811_data*, %struct.ccs811_data** %7, align 8
  %19 = getelementptr inbounds %struct.ccs811_data, %struct.ccs811_data* %18, i32 0, i32 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %8, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %22 = load i32, i32* @CCS811_ALG_RESULT_DATA, align 4
  %23 = bitcast [8 x i32]* %9 to i32*
  %24 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %21, i32 %22, i32 4, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = call i32 @iio_get_time_ns(%struct.iio_dev* %34)
  %36 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %32, i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iio_trigger_notify_done(i32 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local %struct.ccs811_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
