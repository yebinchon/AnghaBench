; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ds4424.c_ds4424_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ds4424.c_ds4424_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.ds4424_data = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"iio dev alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to get vcc-supply regulator. err: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to enable the regulator.\0A\00", align 1
@DS4422_MAX_DAC_CHANNELS = common dso_local global i32 0, align 4
@DS4424_MAX_DAC_CHANNELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"ds4424: Invalid chip id.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ds4424_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ds4424_info = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"iio_device_register failed. ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds4424_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds4424_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds4424_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %134

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call %struct.ds4424_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.ds4424_data* %22, %struct.ds4424_data** %6, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.iio_dev* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %28 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %27, i32 0, i32 2
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %33 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @devm_regulator_get(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %50 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %52 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %20
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %60 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  %63 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %65 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %134

68:                                               ; preds = %20
  %69 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %70 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %73 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @regulator_enable(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %134

83:                                               ; preds = %68
  %84 = call i32 @usleep_range(i32 1000, i32 1200)
  %85 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %86 = call i32 @ds4424_verify_chip(%struct.iio_dev* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %128

90:                                               ; preds = %83
  %91 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %102 [
    i32 129, label %94
    i32 128, label %98
  ]

94:                                               ; preds = %90
  %95 = load i32, i32* @DS4422_MAX_DAC_CHANNELS, align 4
  %96 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  br label %108

98:                                               ; preds = %90
  %99 = load i32, i32* @DS4424_MAX_DAC_CHANNELS, align 4
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  br label %108

102:                                              ; preds = %90
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %128

108:                                              ; preds = %98, %94
  %109 = load i32, i32* @ds4424_channels, align 4
  %110 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %111 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %113 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 0
  store i32* @ds4424_info, i32** %116, align 8
  %117 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %118 = call i32 @iio_device_register(%struct.iio_dev* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  br label %128

126:                                              ; preds = %108
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %134

128:                                              ; preds = %121, %102, %89
  %129 = load %struct.ds4424_data*, %struct.ds4424_data** %6, align 8
  %130 = getelementptr inbounds %struct.ds4424_data, %struct.ds4424_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @regulator_disable(i32 %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %126, %78, %56, %14
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.ds4424_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ds4424_verify_chip(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
