; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_transient_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_transient_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mma8452_data = type { i32 }

@MMA8452_TRANSIENT_SRC = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_SRC_XTRANSE = common dso_local global i32 0, align 4
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@IIO_EV_TYPE_MAG = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_SRC_YTRANSE = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_SRC_ZTRANSE = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @mma8452_transient_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mma8452_transient_interrupt(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.mma8452_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.mma8452_data* %7, %struct.mma8452_data** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = call i32 @iio_get_time_ns(%struct.iio_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mma8452_data*, %struct.mma8452_data** %3, align 8
  %11 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MMA8452_TRANSIENT_SRC, align 4
  %14 = call i32 @i2c_smbus_read_byte_data(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MMA8452_TRANSIENT_SRC_XTRANSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %25 = load i32, i32* @IIO_ACCEL, align 4
  %26 = load i32, i32* @IIO_MOD_X, align 4
  %27 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %28 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %29 = call i32 @IIO_MOD_EVENT_CODE(i32 %25, i32 0, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @iio_push_event(%struct.iio_dev* %24, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MMA8452_TRANSIENT_SRC_YTRANSE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %39 = load i32, i32* @IIO_ACCEL, align 4
  %40 = load i32, i32* @IIO_MOD_Y, align 4
  %41 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %42 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %43 = call i32 @IIO_MOD_EVENT_CODE(i32 %39, i32 0, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @iio_push_event(%struct.iio_dev* %38, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MMA8452_TRANSIENT_SRC_ZTRANSE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %53 = load i32, i32* @IIO_ACCEL, align 4
  %54 = load i32, i32* @IIO_MOD_Z, align 4
  %55 = load i32, i32* @IIO_EV_TYPE_MAG, align 4
  %56 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %57 = call i32 @IIO_MOD_EVENT_CODE(i32 %53, i32 0, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @iio_push_event(%struct.iio_dev* %52, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %17, %51, %46
  ret void
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
