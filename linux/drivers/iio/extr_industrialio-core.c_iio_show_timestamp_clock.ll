; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_show_timestamp_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_show_timestamp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"realtime\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"monotonic\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"monotonic_raw\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"realtime_coarse\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"monotonic_coarse\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"boottime\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"tai\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @iio_show_timestamp_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_show_timestamp_clock(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call i32 @iio_device_get_clock(%struct.iio_dev* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %23 [
    i32 130, label %16
    i32 133, label %17
    i32 131, label %18
    i32 129, label %19
    i32 132, label %20
    i32 134, label %21
    i32 128, label %22
  ]

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 10, i32* %10, align 4
  br label %25

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i32 11, i32* %10, align 4
  br label %25

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i32 15, i32* %10, align 4
  br label %25

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store i32 17, i32* %10, align 4
  br label %25

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store i32 18, i32* %10, align 4
  br label %25

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  store i32 10, i32* %10, align 4
  br label %25

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  store i32 5, i32* %10, align 4
  br label %25

23:                                               ; preds = %3
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @memcpy(i8* %26, i8* %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local i32 @iio_device_get_clock(%struct.iio_dev*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
