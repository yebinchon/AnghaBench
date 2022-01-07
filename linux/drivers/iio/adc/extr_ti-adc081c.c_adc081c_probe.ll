; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc081c.c_adc081c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc081c.c_adc081c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adcxx1c_model = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.iio_dev = type { i32, i32, i32*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.adc081c = type { i32, i32, %struct.i2c_client* }
%struct.acpi_device_id = type { i64 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@adcxx1c_models = common dso_local global %struct.adcxx1c_model* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@adc081c_info = common dso_local global i32 0, align 4
@ADC081C_NUM_CHANNELS = common dso_local global i32 0, align 4
@adc081c_trigger_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adc081c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc081c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.adc081c*, align 8
  %8 = alloca %struct.adcxx1c_model*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %155

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i64 @ACPI_COMPANION(%struct.TYPE_11__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call %struct.acpi_device_id* @acpi_match_device(i32 %31, %struct.TYPE_11__* %33)
  store %struct.acpi_device_id* %34, %struct.acpi_device_id** %10, align 8
  %35 = load %struct.acpi_device_id*, %struct.acpi_device_id** %10, align 8
  %36 = icmp ne %struct.acpi_device_id* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %155

40:                                               ; preds = %25
  %41 = load %struct.adcxx1c_model*, %struct.adcxx1c_model** @adcxx1c_models, align 8
  %42 = load %struct.acpi_device_id*, %struct.acpi_device_id** %10, align 8
  %43 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.adcxx1c_model, %struct.adcxx1c_model* %41, i64 %44
  store %struct.adcxx1c_model* %45, %struct.adcxx1c_model** %8, align 8
  br label %52

46:                                               ; preds = %20
  %47 = load %struct.adcxx1c_model*, %struct.adcxx1c_model** @adcxx1c_models, align 8
  %48 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.adcxx1c_model, %struct.adcxx1c_model* %47, i64 %50
  store %struct.adcxx1c_model* %51, %struct.adcxx1c_model** %8, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %54, i32 16)
  store %struct.iio_dev* %55, %struct.iio_dev** %6, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = icmp ne %struct.iio_dev* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %155

61:                                               ; preds = %52
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = call %struct.adc081c* @iio_priv(%struct.iio_dev* %62)
  store %struct.adc081c* %63, %struct.adc081c** %7, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %66 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %65, i32 0, i32 2
  store %struct.i2c_client* %64, %struct.i2c_client** %66, align 8
  %67 = load %struct.adcxx1c_model*, %struct.adcxx1c_model** %8, align 8
  %68 = getelementptr inbounds %struct.adcxx1c_model, %struct.adcxx1c_model* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %71 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 @devm_regulator_get(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %76 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %78 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %61
  %83 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %84 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %155

87:                                               ; preds = %61
  %88 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %89 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @regulator_enable(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %155

96:                                               ; preds = %87
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %101, align 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 @dev_name(%struct.TYPE_11__* %110)
  %112 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %113 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %115 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %116 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %118 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %117, i32 0, i32 2
  store i32* @adc081c_info, i32** %118, align 8
  %119 = load %struct.adcxx1c_model*, %struct.adcxx1c_model** %8, align 8
  %120 = getelementptr inbounds %struct.adcxx1c_model, %struct.adcxx1c_model* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @ADC081C_NUM_CHANNELS, align 4
  %125 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %126 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %128 = load i32, i32* @adc081c_trigger_handler, align 4
  %129 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %127, i32* null, i32 %128, i32* null)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %96
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = call i32 @dev_err(%struct.TYPE_11__* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %149

136:                                              ; preds = %96
  %137 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %138 = call i32 @iio_device_register(%struct.iio_dev* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %146

142:                                              ; preds = %136
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %145 = call i32 @i2c_set_clientdata(%struct.i2c_client* %143, %struct.iio_dev* %144)
  store i32 0, i32* %3, align 4
  br label %155

146:                                              ; preds = %141
  %147 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %148 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %147)
  br label %149

149:                                              ; preds = %146, %132
  %150 = load %struct.adc081c*, %struct.adc081c** %7, align 8
  %151 = getelementptr inbounds %struct.adc081c, %struct.adc081c* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @regulator_disable(i32 %152)
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %149, %142, %94, %82, %58, %37, %17
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i64 @ACPI_COMPANION(%struct.TYPE_11__*) #1

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.adc081c* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
