; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max44000_data = type { i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@max44000_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"regmap_init failed!\0A\00", align 1
@max44000_info = common dso_local global i32 0, align 4
@MAX44000_DRV_NAME = common dso_local global i32 0, align 4
@max44000_channels = common dso_local global i32 0, align 4
@MAX44000_REG_CFG_RX = common dso_local global i32 0, align 4
@MAX44000_REG_CFG_RX_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to write default CFG_RX: %d\0A\00", align 1
@MAX44000_LED_CURRENT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to write init config: %d\0A\00", align 1
@MAX44000_CFG_TRIM = common dso_local global i32 0, align 4
@MAX44000_CFG_MODE_ALS_PRX = common dso_local global i32 0, align 4
@MAX44000_REG_CFG_MAIN = common dso_local global i32 0, align 4
@MAX44000_REG_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to read init status: %d\0A\00", align 1
@max44000_trigger_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max44000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44000_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max44000_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 8)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %134

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.max44000_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.max44000_data* %20, %struct.max44000_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %21, i32* @max44000_regmap_config)
  %23 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %24 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %26 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %35 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %134

38:                                               ; preds = %18
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, %struct.iio_dev* %40)
  %42 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %43 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 3
  store i32* @max44000_info, i32** %51, align 8
  %52 = load i32, i32* @MAX44000_DRV_NAME, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @max44000_channels, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @max44000_channels, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %63 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MAX44000_REG_CFG_RX, align 4
  %66 = load i32, i32* @MAX44000_REG_CFG_RX_DEFAULT, align 4
  %67 = call i32 @regmap_write(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %38
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %134

76:                                               ; preds = %38
  %77 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %78 = load i32, i32* @MAX44000_LED_CURRENT_DEFAULT, align 4
  %79 = call i32 @max44000_write_led_current_raw(%struct.max44000_data* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %134

88:                                               ; preds = %76
  %89 = load i32, i32* @MAX44000_CFG_TRIM, align 4
  %90 = load i32, i32* @MAX44000_CFG_MODE_ALS_PRX, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %93 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MAX44000_REG_CFG_MAIN, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @regmap_write(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %134

106:                                              ; preds = %88
  %107 = load %struct.max44000_data*, %struct.max44000_data** %6, align 8
  %108 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAX44000_REG_STATUS, align 4
  %111 = call i32 @regmap_read(i32 %109, i32 %110, i32* %9)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %134

120:                                              ; preds = %106
  %121 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %122 = load i32, i32* @max44000_trigger_handler, align 4
  %123 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %121, i32* null, i32 %122, i32* null)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %134

131:                                              ; preds = %120
  %132 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %133 = call i32 @iio_device_register(%struct.iio_dev* %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %126, %114, %100, %82, %70, %30, %15
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.max44000_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @max44000_write_led_current_raw(%struct.max44000_data*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
