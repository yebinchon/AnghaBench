; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_store_timestamp_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_store_timestamp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"monotonic_raw\00", align 1
@CLOCK_MONOTONIC_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"realtime_coarse\00", align 1
@CLOCK_REALTIME_COARSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"monotonic_coarse\00", align 1
@CLOCK_MONOTONIC_COARSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"boottime\00", align 1
@CLOCK_BOOTTIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"tai\00", align 1
@CLOCK_TAI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @iio_store_timestamp_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_store_timestamp_clock(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @sysfs_streq(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @CLOCK_REALTIME, align 4
  store i32 %16, i32* %10, align 4
  br label %62

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @sysfs_streq(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @CLOCK_MONOTONIC, align 4
  store i32 %22, i32* %10, align 4
  br label %61

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @sysfs_streq(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @CLOCK_MONOTONIC_RAW, align 4
  store i32 %28, i32* %10, align 4
  br label %60

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @sysfs_streq(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @CLOCK_REALTIME_COARSE, align 4
  store i32 %34, i32* %10, align 4
  br label %59

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @sysfs_streq(i8* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @CLOCK_MONOTONIC_COARSE, align 4
  store i32 %40, i32* %10, align 4
  br label %58

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @sysfs_streq(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @CLOCK_BOOTTIME, align 4
  store i32 %46, i32* %10, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @sysfs_streq(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @CLOCK_TAI, align 4
  store i32 %52, i32* %10, align 4
  br label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %74

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %27
  br label %61

61:                                               ; preds = %60, %21
  br label %62

62:                                               ; preds = %61, %15
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @dev_to_iio_dev(%struct.device* %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @iio_device_set_clock(i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %69, %53
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @iio_device_set_clock(i32, i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
