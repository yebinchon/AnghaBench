; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.regulator }
%struct.regulator = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.device = type { i32 }
%struct.adc128_data = type { i32, i32, %struct.regulator*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ti,mode\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid operation mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADC128_REG_CONFIG_ADV = common dso_local global i32 0, align 4
@ADC128_REG_MASK = common dso_local global i32 0, align 4
@adc128_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adc128_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc128_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.adc128_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = bitcast %struct.regulator* %13 to %struct.device*
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = bitcast %struct.device* %15 to %struct.regulator*
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.adc128_data* @devm_kzalloc(%struct.regulator* %16, i32 32, i32 %17)
  store %struct.adc128_data* %18, %struct.adc128_data** %9, align 8
  %19 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %20 = icmp ne %struct.adc128_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = bitcast %struct.device* %25 to %struct.regulator*
  %27 = call %struct.regulator* @devm_regulator_get_optional(%struct.regulator* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %27, %struct.regulator** %7, align 8
  %28 = load %struct.regulator*, %struct.regulator** %7, align 8
  %29 = call i64 @IS_ERR(%struct.regulator* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %24
  %32 = load %struct.regulator*, %struct.regulator** %7, align 8
  %33 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %34 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %33, i32 0, i32 2
  store %struct.regulator* %32, %struct.regulator** %34, align 8
  %35 = load %struct.regulator*, %struct.regulator** %7, align 8
  %36 = call i32 @regulator_enable(%struct.regulator* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %139

41:                                               ; preds = %31
  %42 = load %struct.regulator*, %struct.regulator** %7, align 8
  %43 = call i32 @regulator_get_voltage(%struct.regulator* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %10, align 4
  br label %127

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @DIV_ROUND_CLOSEST(i32 %49, i32 1000)
  %51 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %52 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %56

53:                                               ; preds = %24
  %54 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %55 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %54, i32 0, i32 0
  store i32 2560, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %61 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %60, i32 0, i32 1
  %62 = call i64 @of_property_read_u8(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %56
  %65 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %66 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = bitcast %struct.device* %70 to %struct.regulator*
  %72 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %73 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(%struct.regulator* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %127

78:                                               ; preds = %64
  br label %93

79:                                               ; preds = %56
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load i32, i32* @ADC128_REG_CONFIG_ADV, align 4
  %82 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %127

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 1
  %89 = load i32, i32* @ADC128_REG_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %92 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %78
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %96 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %95, i32 0, i32 4
  store %struct.i2c_client* %94, %struct.i2c_client** %96, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %99 = call i32 @i2c_set_clientdata(%struct.i2c_client* %97, %struct.adc128_data* %98)
  %100 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %101 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %100, i32 0, i32 3
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %104 = call i32 @adc128_init_client(%struct.adc128_data* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %127

108:                                              ; preds = %93
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = bitcast %struct.device* %109 to %struct.regulator*
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %115 = load i32, i32* @adc128_groups, align 4
  %116 = call %struct.regulator* @devm_hwmon_device_register_with_groups(%struct.regulator* %110, i32 %113, %struct.adc128_data* %114, i32 %115)
  %117 = bitcast %struct.regulator* %116 to %struct.device*
  store %struct.device* %117, %struct.device** %8, align 8
  %118 = load %struct.device*, %struct.device** %8, align 8
  %119 = bitcast %struct.device* %118 to %struct.regulator*
  %120 = call i64 @IS_ERR(%struct.regulator* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %108
  %123 = load %struct.device*, %struct.device** %8, align 8
  %124 = bitcast %struct.device* %123 to %struct.regulator*
  %125 = call i32 @PTR_ERR(%struct.regulator* %124)
  store i32 %125, i32* %10, align 4
  br label %127

126:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %139

127:                                              ; preds = %122, %107, %85, %69, %46
  %128 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %129 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %128, i32 0, i32 2
  %130 = load %struct.regulator*, %struct.regulator** %129, align 8
  %131 = icmp ne %struct.regulator* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.adc128_data*, %struct.adc128_data** %9, align 8
  %134 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %133, i32 0, i32 2
  %135 = load %struct.regulator*, %struct.regulator** %134, align 8
  %136 = call i32 @regulator_disable(%struct.regulator* %135)
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %126, %39, %21
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.adc128_data* @devm_kzalloc(%struct.regulator*, i32, i32) #1

declare dso_local %struct.regulator* @devm_regulator_get_optional(%struct.regulator*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i64 @of_property_read_u8(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.regulator*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adc128_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adc128_init_client(%struct.adc128_data*) #1

declare dso_local %struct.regulator* @devm_hwmon_device_register_with_groups(%struct.regulator*, i32, %struct.adc128_data*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
