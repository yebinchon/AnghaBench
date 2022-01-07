; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i64, i32 }
%struct.iio_poll_func = type { %struct.iio_dev* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zpa2326_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.zpa2326_private*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iio_poll_func*
  %10 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %9, i32 0, i32 0
  %11 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.zpa2326_private* @iio_priv(%struct.iio_dev* %12)
  store %struct.zpa2326_private* %13, %struct.zpa2326_private** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call i32 @iio_trigger_using_own(%struct.iio_dev* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call i64 @zpa2326_start_oneshot(%struct.iio_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %50

23:                                               ; preds = %18
  %24 = load %struct.zpa2326_private*, %struct.zpa2326_private** %6, align 8
  %25 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %30 = call i64 @zpa2326_poll_oneshot_completion(%struct.iio_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %50

33:                                               ; preds = %28
  %34 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %35 = call i32 @iio_get_time_ns(%struct.iio_dev* %34)
  %36 = load %struct.zpa2326_private*, %struct.zpa2326_private** %6, align 8
  %37 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %45

38:                                               ; preds = %23
  %39 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %40 = load %struct.zpa2326_private*, %struct.zpa2326_private** %6, align 8
  %41 = call i64 @zpa2326_wait_oneshot_completion(%struct.iio_dev* %39, %struct.zpa2326_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %50

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %48 = load %struct.zpa2326_private*, %struct.zpa2326_private** %6, align 8
  %49 = call i32 @zpa2326_fill_sample_buffer(%struct.iio_dev* %47, %struct.zpa2326_private* %48)
  br label %50

50:                                               ; preds = %46, %43, %32, %22
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %55 = call i32 @zpa2326_sleep(%struct.iio_dev* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @iio_trigger_notify_done(i32 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local %struct.zpa2326_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_using_own(%struct.iio_dev*) #1

declare dso_local i64 @zpa2326_start_oneshot(%struct.iio_dev*) #1

declare dso_local i64 @zpa2326_poll_oneshot_completion(%struct.iio_dev*) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i64 @zpa2326_wait_oneshot_completion(%struct.iio_dev*, %struct.zpa2326_private*) #1

declare dso_local i32 @zpa2326_fill_sample_buffer(%struct.iio_dev*, %struct.zpa2326_private*) #1

declare dso_local i32 @zpa2326_sleep(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
