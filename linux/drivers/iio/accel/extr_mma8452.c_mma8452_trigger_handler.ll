; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.mma8452_data = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mma8452_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mma8452_data*, align 8
  %8 = alloca [16 x i32], align 16
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
  %16 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mma8452_data* %16, %struct.mma8452_data** %7, align 8
  %17 = load %struct.mma8452_data*, %struct.mma8452_data** %7, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %19 = call i32 @mma8452_read(%struct.mma8452_data* %17, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = call i32 @iio_get_time_ns(%struct.iio_dev* %26)
  %28 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %24, i32* %25, i32 %27)
  br label %29

29:                                               ; preds = %23, %22
  %30 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iio_trigger_notify_done(i32 %32)
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %34
}

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_read(%struct.mma8452_data*, i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
