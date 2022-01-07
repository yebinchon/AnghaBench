; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32, i32*, i32 }
%struct.cros_ec_sensors_core_state = type { i32 (%struct.iio_dev*, i32, i32*)*, i32, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cros_ec_sensors_capture(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 0
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.cros_ec_sensors_core_state* %15, %struct.cros_ec_sensors_core_state** %7, align 8
  %16 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %17 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %20 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memset(i64 %21, i32 0, i32 %24)
  %26 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %27 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %26, i32 0, i32 0
  %28 = load i32 (%struct.iio_dev*, i32, i32*)*, i32 (%struct.iio_dev*, i32, i32*)** %27, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %35 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 %28(%struct.iio_dev* %29, i32 %33, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %50

42:                                               ; preds = %2
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %45 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = call i32 @iio_get_time_ns(%struct.iio_dev* %47)
  %49 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %43, i64 %46, i32 %48)
  br label %50

50:                                               ; preds = %42, %41
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @iio_trigger_notify_done(i32 %53)
  %55 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %56 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i64, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
