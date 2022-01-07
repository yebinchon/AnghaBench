; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp03.c_hp03_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp03.c_hp03_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.hp03_priv = type { i32, i32, i32, i32, %struct.i2c_client* }

@ENOMEM = common dso_local global i32 0, align 4
@hp03_channels = common dso_local global i32 0, align 4
@hp03_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xclr\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to claim XCLR GPIO\0A\00", align 1
@HP03_EEPROM_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"New EEPROM I2C device failed\0A\00", align 1
@hp03_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to allocate EEPROM regmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to register IIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @hp03_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp03_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.hp03_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %12, i32 24)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = icmp ne %struct.iio_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %129

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call %struct.hp03_priv* @iio_priv(%struct.iio_dev* %20)
  store %struct.hp03_priv* %21, %struct.hp03_priv** %8, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %24 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %23, i32 0, i32 4
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %26 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %25, i32 0, i32 3
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.device* %28, %struct.device** %31, align 8
  %32 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @hp03_channels, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @hp03_channels, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  store i32* @hp03_info, i32** %45, align 8
  %46 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %51 = call i32 @devm_gpiod_get_index(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %50)
  %52 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %53 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %55 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %19
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %63 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %129

67:                                               ; preds = %19
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HP03_EEPROM_ADDR, align 4
  %72 = call i32 @i2c_new_dummy_device(i32 %70, i32 %71)
  %73 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %74 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %76 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %67
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %84 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %129

87:                                               ; preds = %67
  %88 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %89 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @regmap_init_i2c(i32 %90, i32* @hp03_regmap_config)
  %92 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %93 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %95 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %103 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PTR_ERR(i32 %104)
  store i32 %105, i32* %9, align 4
  br label %123

106:                                              ; preds = %87
  %107 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %108 = call i32 @iio_device_register(%struct.iio_dev* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %118

114:                                              ; preds = %106
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %117 = call i32 @i2c_set_clientdata(%struct.i2c_client* %115, %struct.iio_dev* %116)
  store i32 0, i32* %3, align 4
  br label %129

118:                                              ; preds = %111
  %119 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %120 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @regmap_exit(i32 %121)
  br label %123

123:                                              ; preds = %118, %99
  %124 = load %struct.hp03_priv*, %struct.hp03_priv** %8, align 8
  %125 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @i2c_unregister_device(i32 %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %114, %80, %59, %16
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.hp03_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @regmap_init_i2c(i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
