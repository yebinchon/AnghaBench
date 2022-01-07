; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_rfd77402.c_rfd77402_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rfd77402_data = type { i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@RFD77402_MOD_CHIP_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rfd77402_info = common dso_local global i32 0, align 4
@rfd77402_channels = common dso_local global i32 0, align 4
@RFD77402_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rfd77402_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfd77402_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rfd77402_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @RFD77402_MOD_CHIP_ID, align 4
  %11 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 44289
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 44290
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %19, %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %27, i32 16)
  store %struct.iio_dev* %28, %struct.iio_dev** %7, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = icmp ne %struct.iio_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %25
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = call %struct.rfd77402_data* @iio_priv(%struct.iio_dev* %35)
  store %struct.rfd77402_data* %36, %struct.rfd77402_data** %6, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = call i32 @i2c_set_clientdata(%struct.i2c_client* %37, %struct.iio_dev* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.rfd77402_data*, %struct.rfd77402_data** %6, align 8
  %42 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %41, i32 0, i32 1
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.rfd77402_data*, %struct.rfd77402_data** %6, align 8
  %44 = getelementptr inbounds %struct.rfd77402_data, %struct.rfd77402_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 4
  store i32* @rfd77402_info, i32** %52, align 8
  %53 = load i32, i32* @rfd77402_channels, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @rfd77402_channels, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @RFD77402_DRV_NAME, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rfd77402_data*, %struct.rfd77402_data** %6, align 8
  %67 = call i32 @rfd77402_init(%struct.rfd77402_data* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %34
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %34
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = call i32 @iio_device_register(%struct.iio_dev* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %83

79:                                               ; preds = %77
  %80 = load %struct.rfd77402_data*, %struct.rfd77402_data** %6, align 8
  %81 = call i32 @rfd77402_powerdown(%struct.rfd77402_data* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %78, %70, %31, %22, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.rfd77402_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rfd77402_init(%struct.rfd77402_data*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @rfd77402_powerdown(%struct.rfd77402_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
