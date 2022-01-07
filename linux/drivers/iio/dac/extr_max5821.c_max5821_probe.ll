; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_max5821.c_max5821_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max5821_data = type { i32*, i32, i32, i32*, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32*, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@MAX5821_MAX_DAC_CHANNELS = common dso_local global i64 0, align 8
@MAX5821_100KOHM_TO_GND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get vref regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to enable vref regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get voltage on regulator: %d\0A\00", align 1
@max5821_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@max5821_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max5821_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max5821_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max5821_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 40)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %129

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.max5821_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.max5821_data* %20, %struct.max5821_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %26 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %25, i32 0, i32 5
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %28 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %27, i32 0, i32 4
  %29 = call i32 @mutex_init(i32* %28)
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %46, %18
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @MAX5821_MAX_DAC_CHANNELS, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %36 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @MAX5821_100KOHM_TO_GND, align 4
  %41 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %42 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @devm_regulator_get(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %54 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %56 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %49
  %61 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %62 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %127

69:                                               ; preds = %49
  %70 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %71 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regulator_enable(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %127

81:                                               ; preds = %69
  %82 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %83 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regulator_get_voltage(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %122

93:                                               ; preds = %81
  %94 = load i32, i32* %9, align 4
  %95 = sdiv i32 %94, 1000
  %96 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %97 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32* %104, i32** %107, align 8
  %108 = load i32, i32* @max5821_channels, align 4
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %111 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @max5821_channels, align 4
  %113 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %116 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %119 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %118, i32 0, i32 0
  store i32* @max5821_info, i32** %119, align 8
  %120 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %121 = call i32 @iio_device_register(%struct.iio_dev* %120)
  store i32 %121, i32* %3, align 4
  br label %129

122:                                              ; preds = %88
  %123 = load %struct.max5821_data*, %struct.max5821_data** %6, align 8
  %124 = getelementptr inbounds %struct.max5821_data, %struct.max5821_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @regulator_disable(i32 %125)
  br label %127

127:                                              ; preds = %122, %76, %60
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %93, %15
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.max5821_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
