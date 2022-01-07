; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_get_time_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_get_time_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.timespec64 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_get_time_ns(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.timespec64, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call i32 @iio_device_get_clock(%struct.iio_dev* %5)
  switch i32 %6, label %23 [
    i32 130, label %7
    i32 133, label %9
    i32 131, label %11
    i32 129, label %13
    i32 132, label %16
    i32 134, label %19
    i32 128, label %21
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @ktime_get_real_ns()
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = call i32 (...) @ktime_get_ns()
  store i32 %10, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = call i32 (...) @ktime_get_raw_ns()
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1
  %14 = call i32 (...) @ktime_get_coarse_real()
  %15 = call i32 @ktime_to_ns(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = call i32 @ktime_get_coarse_ts64(%struct.timespec64* %4)
  %18 = call i32 @timespec64_to_ns(%struct.timespec64* %4)
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = call i32 (...) @ktime_get_boottime_ns()
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %1
  %22 = call i32 (...) @ktime_get_clocktai_ns()
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %7, %9, %11, %13, %16, %19, %21, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @iio_device_get_clock(%struct.iio_dev*) #1

declare dso_local i32 @ktime_get_real_ns(...) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @ktime_get_raw_ns(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_coarse_real(...) #1

declare dso_local i32 @ktime_get_coarse_ts64(%struct.timespec64*) #1

declare dso_local i32 @timespec64_to_ns(%struct.timespec64*) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @ktime_get_clocktai_ns(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
