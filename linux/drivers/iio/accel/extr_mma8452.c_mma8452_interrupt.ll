; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mma8452_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MMA8452_INT_SRC = common dso_local global i32 0, align 4
@MMA8452_INT_DRDY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MMA8452_INT_FF_MT = common dso_local global i32 0, align 4
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X_AND_Y_AND_Z = common dso_local global i32 0, align 4
@IIO_EV_TYPE_MAG = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@MMA8452_INT_TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mma8452_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mma8452_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.mma8452_data* %14, %struct.mma8452_data** %7, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mma8452_data*, %struct.mma8452_data** %7, align 8
  %17 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MMA8452_INT_SRC, align 4
  %20 = call i32 @i2c_smbus_read_byte_data(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mma8452_data*, %struct.mma8452_data** %7, align 8
  %28 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MMA8452_INT_DRDY, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %26, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %82

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MMA8452_INT_DRDY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iio_trigger_poll_chained(i32 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MMA8452_INT_FF_MT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.mma8452_data*, %struct.mma8452_data** %7, align 8
  %56 = call i64 @mma8452_freefall_mode_enabled(%struct.mma8452_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = call i32 @iio_get_time_ns(%struct.iio_dev* %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %62 = load i32, i32* @IIO_ACCEL, align 4
  %63 = load i32, i32* @IIO_MOD_X_AND_Y_AND_Z, align 4
  %64 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %65 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %66 = call i32 @IIO_MOD_EVENT_CODE(i32 %62, i32 0, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @iio_push_event(%struct.iio_dev* %61, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %58, %54
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %49
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MMA8452_INT_TRANS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %78 = call i32 @mma8452_transient_interrupt(%struct.iio_dev* %77)
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %36, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @iio_trigger_poll_chained(i32) #1

declare dso_local i64 @mma8452_freefall_mode_enabled(%struct.mma8452_data*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mma8452_transient_interrupt(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
