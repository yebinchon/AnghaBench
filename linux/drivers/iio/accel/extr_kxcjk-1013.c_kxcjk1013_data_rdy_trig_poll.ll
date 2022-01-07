; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_data_rdy_trig_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_data_rdy_trig_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.kxcjk1013_data = type { i64, i32, i64, i32, i64, i32 }

@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kxcjk1013_data_rdy_trig_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_data_rdy_trig_poll(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.kxcjk1013_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.iio_dev*
  store %struct.iio_dev* %9, %struct.iio_dev** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %11 = call %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.kxcjk1013_data* %11, %struct.kxcjk1013_data** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call i32 @iio_get_time_ns(%struct.iio_dev* %12)
  %14 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %15 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %17 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %22 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @iio_trigger_poll(i32 %23)
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %27 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %32 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iio_trigger_poll(i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %7, align 8
  %38 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.kxcjk1013_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
