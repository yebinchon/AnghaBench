; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_create_managed_iiodev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_create_managed_iiodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i8*, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@zpa2326_channels = common dso_local global i32 0, align 4
@zpa2326_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_dev* (%struct.device*, i8*, %struct.regmap*)* @zpa2326_create_managed_iiodev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_dev* @zpa2326_create_managed_iiodev(%struct.device* %0, i8* %1, %struct.regmap* %2) #0 {
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %9, i32 4)
  store %struct.iio_dev* %10, %struct.iio_dev** %8, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.iio_dev* null, %struct.iio_dev** %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.device* %18, %struct.device** %21, align 8
  %22 = load i32, i32* @zpa2326_channels, align 4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @zpa2326_channels, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 1
  store i32* @zpa2326_info, i32** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  store %struct.iio_dev* %34, %struct.iio_dev** %4, align 8
  br label %35

35:                                               ; preds = %14, %13
  %36 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  ret %struct.iio_dev* %36
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
