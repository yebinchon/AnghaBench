; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32*, i32 }
%struct.ad799x_state = type { i32, i32, i32, i32, i32 }

@AD799X_CHANNEL_SHIFT = common dso_local global i32 0, align 4
@AD7998_CONV_RES_REG = common dso_local global i32 0, align 4
@AD7997_8_READ_SEQUENCE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad799x_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ad799x_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %11, %struct.iio_poll_func** %5, align 8
  %12 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %13 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %12, i32 0, i32 0
  %14 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  store %struct.iio_dev* %14, %struct.iio_dev** %6, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.ad799x_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad799x_state* %16, %struct.ad799x_state** %7, align 8
  %17 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %18 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %44 [
    i32 135, label %20
    i32 131, label %20
    i32 128, label %20
    i32 134, label %31
    i32 133, label %31
    i32 132, label %31
    i32 130, label %40
    i32 129, label %40
  ]

20:                                               ; preds = %2, %2, %2
  %21 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %22 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %23, %29
  store i32 %30, i32* %9, align 4
  br label %45

31:                                               ; preds = %2, %2, %2
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AD799X_CHANNEL_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @AD7998_CONV_RES_REG, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %9, align 4
  br label %45

40:                                               ; preds = %2, %2
  %41 = load i32, i32* @AD7997_8_READ_SEQUENCE, align 4
  %42 = load i32, i32* @AD7998_CONV_RES_REG, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %40, %31, %20
  %46 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %47 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %51 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %54 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i2c_smbus_read_i2c_block_data(i32 %48, i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %68

60:                                               ; preds = %45
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = load %struct.ad799x_state*, %struct.ad799x_state** %7, align 8
  %63 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %66 = call i32 @iio_get_time_ns(%struct.iio_dev* %65)
  %67 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %61, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %60, %59
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @iio_trigger_notify_done(i32 %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local %struct.ad799x_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
