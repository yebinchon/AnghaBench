; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_start_cleaning_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_start_cleaning_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.sps30_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SPS30_START_FAN_CLEANING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @start_cleaning_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_cleaning_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.sps30_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %10, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %17 = call %struct.sps30_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.sps30_state* %17, %struct.sps30_state** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtoint(i8* %18, i32 0, i32* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.sps30_state*, %struct.sps30_state** %11, align 8
  %29 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.sps30_state*, %struct.sps30_state** %11, align 8
  %32 = load i32, i32* @SPS30_START_FAN_CLEANING, align 4
  %33 = call i32 @sps30_do_cmd(%struct.sps30_state* %31, i32 %32, i32* null, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.sps30_state*, %struct.sps30_state** %11, align 8
  %35 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %27
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %39, %24
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.sps30_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sps30_do_cmd(%struct.sps30_state*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
