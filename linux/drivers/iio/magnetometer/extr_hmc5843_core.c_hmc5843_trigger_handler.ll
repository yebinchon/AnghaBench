; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.hmc5843_data = type { i32, i32, i32 }

@HMC5843_DATA_OUT_MSB_REGS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hmc5843_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.hmc5843_data*, align 8
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
  %15 = call %struct.hmc5843_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.hmc5843_data* %15, %struct.hmc5843_data** %7, align 8
  %16 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %17 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %20 = call i32 @hmc5843_wait_measurement(%struct.hmc5843_data* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %25 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %29 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HMC5843_DATA_OUT_MSB_REGS, align 4
  %32 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %33 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regmap_bulk_read(i32 %30, i32 %31, i32 %34, i32 12)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %37 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %44 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %45 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = call i32 @iio_get_time_ns(%struct.iio_dev* %47)
  %49 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %43, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %42, %41, %23
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iio_trigger_notify_done(i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.hmc5843_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hmc5843_wait_measurement(%struct.hmc5843_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
