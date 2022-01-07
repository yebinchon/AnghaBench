; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.silead_ts_data = type { i32, %struct.TYPE_4__*, %struct.i2c_client* }
%struct.TYPE_4__ = type { i8* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"I2C functionality check failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@silead_disable_regulator = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Shutdown GPIO request failed\0A\00", align 1
@silead_ts_threaded_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"IRQ request failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @silead_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.silead_ts_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_I2C_BLOCK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_check_functionality(i32 %13, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %172

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.silead_ts_data* @devm_kzalloc(%struct.device* %27, i32 24, i32 %28)
  store %struct.silead_ts_data* %29, %struct.silead_ts_data** %6, align 8
  %30 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %31 = icmp ne %struct.silead_ts_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %172

35:                                               ; preds = %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.silead_ts_data* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %41 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %40, i32 0, i32 2
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %43 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %44 = call i32 @silead_ts_set_default_fw_name(%struct.silead_ts_data* %42, %struct.i2c_device_id* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %172

49:                                               ; preds = %35
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @silead_ts_read_props(%struct.i2c_client* %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %172

59:                                               ; preds = %49
  %60 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %61 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %66 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %69, align 8
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %72 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %73)
  %75 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %76 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @devm_regulator_bulk_get(%struct.device* %70, i32 %74, %struct.TYPE_4__* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %59
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %172

83:                                               ; preds = %59
  %84 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %85 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %86)
  %88 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %89 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @regulator_bulk_enable(i32 %87, %struct.TYPE_4__* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %172

96:                                               ; preds = %83
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load i32, i32* @silead_disable_regulator, align 4
  %99 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %100 = call i32 @devm_add_action_or_reset(%struct.device* %97, i32 %98, %struct.silead_ts_data* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %172

105:                                              ; preds = %96
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %108 = call i32 @devm_gpiod_get_optional(%struct.device* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %110 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %112 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %105
  %117 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %118 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @PTR_ERR(i32 %119)
  %121 = load i32, i32* @EPROBE_DEFER, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.device*, %struct.device** %7, align 8
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %129 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @PTR_ERR(i32 %130)
  store i32 %131, i32* %3, align 4
  br label %172

132:                                              ; preds = %105
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = call i32 @silead_ts_setup(%struct.i2c_client* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %172

139:                                              ; preds = %132
  %140 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %141 = call i32 @silead_ts_request_input_dev(%struct.silead_ts_data* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %3, align 4
  br label %172

146:                                              ; preds = %139
  %147 = load %struct.device*, %struct.device** %7, align 8
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @silead_ts_threaded_irq_handler, align 4
  %152 = load i32, i32* @IRQF_ONESHOT, align 4
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.silead_ts_data*, %struct.silead_ts_data** %6, align 8
  %157 = call i32 @devm_request_threaded_irq(%struct.device* %147, i64 %150, i32* null, i32 %151, i32 %152, i32 %155, %struct.silead_ts_data* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %146
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @EPROBE_DEFER, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.device*, %struct.device** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %3, align 4
  br label %172

171:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %169, %144, %137, %127, %103, %94, %81, %56, %47, %32, %21
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.silead_ts_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.silead_ts_data*) #1

declare dso_local i32 @silead_ts_set_default_fw_name(%struct.silead_ts_data*, %struct.i2c_device_id*) #1

declare dso_local i32 @silead_ts_read_props(%struct.i2c_client*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.silead_ts_data*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @silead_ts_setup(%struct.i2c_client*) #1

declare dso_local i32 @silead_ts_request_input_dev(%struct.silead_ts_data*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i64, i32*, i32, i32, i32, %struct.silead_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
