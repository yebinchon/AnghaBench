; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_dev_attr = type { i32 }
%struct.ad9523_state = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad9523_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.iio_dev_attr*, align 8
  %12 = alloca %struct.ad9523_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %17)
  store %struct.iio_dev_attr* %18, %struct.iio_dev_attr** %11, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %20 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %19)
  store %struct.ad9523_state* %20, %struct.ad9523_state** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strtobool(i8* %21, i32* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %27
  %34 = load %struct.ad9523_state*, %struct.ad9523_state** %12, align 8
  %35 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %11, align 8
  %38 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %46 [
    i32 128, label %40
    i32 129, label %43
  ]

40:                                               ; preds = %33
  %41 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %42 = call i32 @ad9523_sync(%struct.iio_dev* %41)
  store i32 %42, i32* %14, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %45 = call i32 @ad9523_store_eeprom(%struct.iio_dev* %44)
  store i32 %45, i32* %14, align 4
  br label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %46, %43, %40
  %50 = load %struct.ad9523_state*, %struct.ad9523_state** %12, align 8
  %51 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  br label %60

58:                                               ; preds = %49
  %59 = load i64, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %57, %55 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %30, %25
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad9523_sync(%struct.iio_dev*) #1

declare dso_local i32 @ad9523_store_eeprom(%struct.iio_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
