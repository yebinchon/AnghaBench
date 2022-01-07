; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64 }
%struct.bmc150_accel_data = type { i32, i64 }

@INDIO_BUFFER_TRIGGERED = common dso_local global i64 0, align 8
@BMC150_ACCEL_INT_WATERMARK = common dso_local global i32 0, align 4
@BMC150_ACCEL_FIFO_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @bmc150_accel_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.bmc150_accel_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev* %5)
  store %struct.bmc150_accel_data* %6, %struct.bmc150_accel_data** %4, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INDIO_BUFFER_TRIGGERED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %13)
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %17 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %20 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %26 = load i32, i32* @BMC150_ACCEL_INT_WATERMARK, align 4
  %27 = call i32 @bmc150_accel_set_interrupt(%struct.bmc150_accel_data* %25, i32 %26, i32 0)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %29 = load i32, i32* @BMC150_ACCEL_FIFO_LENGTH, align 4
  %30 = call i32 @__bmc150_accel_fifo_flush(%struct.iio_dev* %28, i32 %29, i32 0)
  %31 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %32 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %34 = call i32 @bmc150_accel_fifo_set_mode(%struct.bmc150_accel_data* %33)
  br label %35

35:                                               ; preds = %24, %23
  %36 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %37 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.bmc150_accel_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_accel_set_interrupt(%struct.bmc150_accel_data*, i32, i32) #1

declare dso_local i32 @__bmc150_accel_fifo_flush(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @bmc150_accel_fifo_set_mode(%struct.bmc150_accel_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
