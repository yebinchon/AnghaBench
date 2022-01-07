; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tsys01_dev = type { i32 (i32, i32, i32)*, i32, i32 }

@tsys01_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@tsys01_channels = common dso_local global i32 0, align 4
@TSYS01_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.device*)* @tsys01_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsys01_probe(%struct.iio_dev* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsys01_dev*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.tsys01_dev* @iio_priv(%struct.iio_dev* %8)
  store %struct.tsys01_dev* %9, %struct.tsys01_dev** %7, align 8
  %10 = load %struct.tsys01_dev*, %struct.tsys01_dev** %7, align 8
  %11 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %10, i32 0, i32 2
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 5
  store i32* @tsys01_info, i32** %14, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.device* %22, %struct.device** %25, align 8
  %26 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @tsys01_channels, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @tsys01_channels, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tsys01_dev*, %struct.tsys01_dev** %7, align 8
  %37 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %36, i32 0, i32 0
  %38 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %37, align 8
  %39 = load %struct.tsys01_dev*, %struct.tsys01_dev** %7, align 8
  %40 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TSYS01_RESET, align 4
  %43 = call i32 %38(i32 %41, i32 %42, i32 3000)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %59

48:                                               ; preds = %2
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = call i32 @tsys01_read_prom(%struct.iio_dev* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %58 = call i32 @devm_iio_device_register(%struct.device* %56, %struct.iio_dev* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %53, %46
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.tsys01_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tsys01_read_prom(%struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
