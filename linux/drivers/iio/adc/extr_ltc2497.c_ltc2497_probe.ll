; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2497.c_ltc2497_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2497.c_ltc2497_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { %struct.TYPE_5__, i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.ltc2497_st = type { i32, i32, i32, %struct.i2c_client* }
%struct.iio_map = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ltc2497_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ltc2497_channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"iio map err: %d\0A\00", align 1
@LTC2497_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltc2497_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2497_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ltc2497_st*, align 8
  %8 = alloca %struct.iio_map*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I2C_FUNC_I2C, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %139

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_4__* %23, i32 24)
  store %struct.iio_dev* %24, %struct.iio_dev** %6, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = icmp ne %struct.iio_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %139

30:                                               ; preds = %21
  %31 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %32 = call %struct.ltc2497_st* @iio_priv(%struct.iio_dev* %31)
  store %struct.ltc2497_st* %32, %struct.ltc2497_st** %7, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.iio_dev* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %38 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %37, i32 0, i32 3
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32* @ltc2497_info, i32** %50, align 8
  %51 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @ltc2497_channel, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ltc2497_channel, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @devm_regulator_get(%struct.TYPE_4__* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %65 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %67 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %30
  %72 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %73 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %139

76:                                               ; preds = %30
  %77 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %78 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regulator_enable(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %139

85:                                               ; preds = %76
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.iio_map*
  store %struct.iio_map* %96, %struct.iio_map** %8, align 8
  %97 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %98 = load %struct.iio_map*, %struct.iio_map** %8, align 8
  %99 = call i32 @iio_map_array_register(%struct.iio_dev* %97, %struct.iio_map* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %104 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @dev_err(%struct.TYPE_5__* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %133

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %110 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %109, i32 0, i32 3
  %111 = load %struct.i2c_client*, %struct.i2c_client** %110, align 8
  %112 = load i32, i32* @LTC2497_CONFIG_DEFAULT, align 4
  %113 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %130

117:                                              ; preds = %108
  %118 = load i32, i32* @LTC2497_CONFIG_DEFAULT, align 4
  %119 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %120 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = call i32 (...) @ktime_get()
  %122 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %123 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %125 = call i32 @iio_device_register(%struct.iio_dev* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %130

129:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %139

130:                                              ; preds = %128, %116
  %131 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %132 = call i32 @iio_map_array_unregister(%struct.iio_dev* %131)
  br label %133

133:                                              ; preds = %130, %102
  %134 = load %struct.ltc2497_st*, %struct.ltc2497_st** %7, align 8
  %135 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @regulator_disable(i32 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %129, %83, %71, %27, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.ltc2497_st* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @iio_map_array_register(%struct.iio_dev*, %struct.iio_map*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_map_array_unregister(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
