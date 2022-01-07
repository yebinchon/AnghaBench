; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_ad9523.c_ad9523_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_dev_attr = type { i64 }
%struct.ad9523_state = type { i32 }

@AD9523_READBACK_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad9523_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9523_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_dev_attr*, align 8
  %9 = alloca %struct.ad9523_state*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %13)
  store %struct.iio_dev_attr* %14, %struct.iio_dev_attr** %8, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad9523_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad9523_state* %16, %struct.ad9523_state** %9, align 8
  %17 = load %struct.ad9523_state*, %struct.ad9523_state** %9, align 8
  %18 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load i32, i32* @AD9523_READBACK_0, align 4
  %22 = call i32 @ad9523_read(%struct.iio_dev* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %8, align 8
  %29 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %25, %3
  %40 = load %struct.ad9523_state*, %struct.ad9523_state** %9, align 8
  %41 = getelementptr inbounds %struct.ad9523_state, %struct.ad9523_state* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ad9523_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad9523_read(%struct.iio_dev*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
