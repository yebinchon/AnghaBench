; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_cio-dac.c_cio_dac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_cio-dac.c_cio_dac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { %struct.TYPE_2__, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.cio_dac_iio = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@base = common dso_local global i64* null, align 8
@CIO_DAC_EXTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Unable to request port addresses (0x%X-0x%X)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cio_dac_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@cio_dac_channels = common dso_local global i32 0, align 4
@CIO_DAC_NUM_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @cio_dac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio_dac_probe(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.cio_dac_iio*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %9, i32 8)
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i64*, i64** @base, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CIO_DAC_EXTENT, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_name(%struct.device* %24)
  %26 = call i32 @devm_request_region(%struct.device* %17, i64 %22, i64 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %16
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i64*, i64** @base, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @base, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CIO_DAC_EXTENT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %41)
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %94

45:                                               ; preds = %16
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 5
  store i32* @cio_dac_info, i32** %47, align 8
  %48 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @cio_dac_channels, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @CIO_DAC_NUM_CHAN, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_name(%struct.device* %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.device* %61, %struct.device** %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %66 = call %struct.cio_dac_iio* @iio_priv(%struct.iio_dev* %65)
  store %struct.cio_dac_iio* %66, %struct.cio_dac_iio** %7, align 8
  %67 = load i64*, i64** @base, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cio_dac_iio*, %struct.cio_dac_iio** %7, align 8
  %73 = getelementptr inbounds %struct.cio_dac_iio, %struct.cio_dac_iio* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %87, %45
  %75 = load i32, i32* %8, align 4
  %76 = icmp ult i32 %75, 32
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i64*, i64** @base, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 @outw(i32 0, i64 %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 2
  store i32 %89, i32* %8, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %93 = call i32 @devm_iio_device_register(%struct.device* %91, %struct.iio_dev* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %28, %13
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.cio_dac_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
