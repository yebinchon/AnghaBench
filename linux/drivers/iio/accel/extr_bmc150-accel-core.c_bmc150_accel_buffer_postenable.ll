; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64 }
%struct.bmc150_accel_data = type { i32, i64, i32 }

@INDIO_BUFFER_TRIGGERED = common dso_local global i64 0, align 8
@BMC150_ACCEL_INT_WATERMARK = common dso_local global i32 0, align 4
@BMC150_ACCEL_FIFO_MODE_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @bmc150_accel_buffer_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.bmc150_accel_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.bmc150_accel_data* %7, %struct.bmc150_accel_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INDIO_BUFFER_TRIGGERED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = call i32 @iio_triggered_buffer_postenable(%struct.iio_dev* %14)
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %18 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %21 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %47

25:                                               ; preds = %16
  %26 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %27 = load i32, i32* @BMC150_ACCEL_INT_WATERMARK, align 4
  %28 = call i32 @bmc150_accel_set_interrupt(%struct.bmc150_accel_data* %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %47

32:                                               ; preds = %25
  %33 = load i64, i64* @BMC150_ACCEL_FIFO_MODE_FIFO, align 8
  %34 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %35 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %37 = call i32 @bmc150_accel_fifo_set_mode(%struct.bmc150_accel_data* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %42 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %44 = load i32, i32* @BMC150_ACCEL_INT_WATERMARK, align 4
  %45 = call i32 @bmc150_accel_set_interrupt(%struct.bmc150_accel_data* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46, %31, %24
  %48 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %49 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_postenable(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_accel_set_interrupt(%struct.bmc150_accel_data*, i32, i32) #1

declare dso_local i32 @bmc150_accel_fifo_set_mode(%struct.bmc150_accel_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
