; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.srf08_data = type { i32, i64* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @srf08_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf08_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.srf08_data*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.srf08_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.srf08_data* %15, %struct.srf08_data** %7, align 8
  %16 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %17 = call i64 @srf08_read_ranging(%struct.srf08_data* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %23 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %27 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %25, i64* %29, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %31 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %32 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %35 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %30, i64* %33, i32 %36)
  %38 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %39 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %21, %20
  %42 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iio_trigger_notify_done(i32 %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local %struct.srf08_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @srf08_read_ranging(%struct.srf08_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
