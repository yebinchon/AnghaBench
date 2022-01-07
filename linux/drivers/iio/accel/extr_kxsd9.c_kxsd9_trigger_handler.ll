; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxsd9.c_kxsd9_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.kxsd9_state = type { i32, i32 }

@KXSD9_REG_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"error reading data\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kxsd9_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxsd9_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_poll_func*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.kxsd9_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %12, %struct.iio_poll_func** %6, align 8
  %13 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %14 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %13, i32 0, i32 0
  %15 = load %struct.iio_dev*, %struct.iio_dev** %14, align 8
  store %struct.iio_dev* %15, %struct.iio_dev** %7, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.kxsd9_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.kxsd9_state* %17, %struct.kxsd9_state** %8, align 8
  %18 = load %struct.kxsd9_state*, %struct.kxsd9_state** %8, align 8
  %19 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KXSD9_REG_X, align 4
  %22 = bitcast [8 x i32]* %10 to i32**
  %23 = call i32 @regmap_bulk_read(i32 %20, i32 %21, i32** %22, i32 8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.kxsd9_state*, %struct.kxsd9_state** %8, align 8
  %28 = getelementptr inbounds %struct.kxsd9_state, %struct.kxsd9_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = call i32 @iio_get_time_ns(%struct.iio_dev* %35)
  %37 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %33, i32* %34, i32 %36)
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iio_trigger_notify_done(i32 %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.kxsd9_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32**, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
