; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad799x_state = type { i32 }

@AD7998_ALERT_STAT_REG = common dso_local global i32 0, align 4
@AD7998_ALERT_STAT_CLEAR = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ad799x_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ad799x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.ad799x_state* @iio_priv(i8* %11)
  store %struct.ad799x_state* %12, %struct.ad799x_state** %6, align 8
  %13 = load %struct.ad799x_state*, %struct.ad799x_state** %6, align 8
  %14 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AD7998_ALERT_STAT_REG, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.ad799x_state*, %struct.ad799x_state** %6, align 8
  %23 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AD7998_ALERT_STAT_REG, align 4
  %26 = load i32, i32* @AD7998_ALERT_STAT_CLEAR, align 4
  %27 = call i64 @i2c_smbus_write_byte_data(i32 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %69

30:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %68

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @IIO_VOLTAGE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 1
  %49 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %50 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %51 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %46, i32 %48, i32 %49, i32 %50)
  br label %59

52:                                               ; preds = %40
  %53 = load i32, i32* @IIO_VOLTAGE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 1
  %56 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %57 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %58 = call i32 @IIO_UNMOD_EVENT_CODE(i32 %53, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = phi i32 [ %51, %45 ], [ %58, %52 ]
  %61 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %62 = call i32 @iio_get_time_ns(%struct.iio_dev* %61)
  %63 = call i32 @iio_push_event(%struct.iio_dev* %41, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %59, %34
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %31

68:                                               ; preds = %31
  br label %69

69:                                               ; preds = %68, %29, %20
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %70
}

declare dso_local %struct.ad799x_state* @iio_priv(i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i64 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_UNMOD_EVENT_CODE(i32, i32, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
