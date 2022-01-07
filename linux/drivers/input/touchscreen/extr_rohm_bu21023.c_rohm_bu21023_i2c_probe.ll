; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_bu21023_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_bu21023_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rohm_ts_data = type { %struct.input_dev*, i32, %struct.i2c_client* }
%struct.input_dev = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"IRQ is not assigned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"I2C level transfers not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAF_1SAMPLE = common dso_local global i32 0, align 4
@BU21023_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@rohm_ts_open = common dso_local global i32 0, align 4
@rohm_ts_close = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ROHM_TS_ABS_X_MIN = common dso_local global i32 0, align 4
@ROHM_TS_ABS_X_MAX = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ROHM_TS_ABS_Y_MIN = common dso_local global i32 0, align 4
@ROHM_TS_ABS_Y_MAX = common dso_local global i32 0, align 4
@MAX_CONTACTS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to multi touch slots initialization\0A\00", align 1
@rohm_ts_soft_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@rohm_ts_attr_group = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to create sysfs group: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rohm_bu21023_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rohm_bu21023_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rohm_ts_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 3
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %153

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %153

35:                                               ; preds = %21
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @rohm_ts_power_off(%struct.i2c_client* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %153

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.rohm_ts_data* @devm_kzalloc(%struct.device* %43, i32 24, i32 %44)
  store %struct.rohm_ts_data* %45, %struct.rohm_ts_data** %7, align 8
  %46 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %47 = icmp ne %struct.rohm_ts_data* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %153

51:                                               ; preds = %42
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %54 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %53, i32 0, i32 2
  store %struct.i2c_client* %52, %struct.i2c_client** %54, align 8
  %55 = load i32, i32* @MAF_1SAMPLE, align 4
  %56 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %57 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %60 = call i32 @i2c_set_clientdata(%struct.i2c_client* %58, %struct.rohm_ts_data* %59)
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %61)
  store %struct.input_dev* %62, %struct.input_dev** %8, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %64 = icmp ne %struct.input_dev* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %153

68:                                               ; preds = %51
  %69 = load i32, i32* @BU21023_NAME, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @BUS_I2C, align 4
  %73 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @rohm_ts_open, align 4
  %77 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @rohm_ts_close, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %83 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %84 = getelementptr inbounds %struct.rohm_ts_data, %struct.rohm_ts_data* %83, i32 0, i32 0
  store %struct.input_dev* %82, %struct.input_dev** %84, align 8
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %87 = call i32 @input_set_drvdata(%struct.input_dev* %85, %struct.rohm_ts_data* %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %89 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %90 = load i32, i32* @ROHM_TS_ABS_X_MIN, align 4
  %91 = load i32, i32* @ROHM_TS_ABS_X_MAX, align 4
  %92 = call i32 @input_set_abs_params(%struct.input_dev* %88, i32 %89, i32 %90, i32 %91, i32 0, i32 0)
  %93 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %94 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %95 = load i32, i32* @ROHM_TS_ABS_Y_MIN, align 4
  %96 = load i32, i32* @ROHM_TS_ABS_Y_MAX, align 4
  %97 = call i32 @input_set_abs_params(%struct.input_dev* %93, i32 %94, i32 %95, i32 %96, i32 0, i32 0)
  %98 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %99 = load i32, i32* @MAX_CONTACTS, align 4
  %100 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %101 = load i32, i32* @INPUT_MT_TRACK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @input_mt_init_slots(%struct.input_dev* %98, i32 %99, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %68
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %153

112:                                              ; preds = %68
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @rohm_ts_soft_irq, align 4
  %118 = load i32, i32* @IRQF_ONESHOT, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.rohm_ts_data*, %struct.rohm_ts_data** %7, align 8
  %123 = call i32 @devm_request_threaded_irq(%struct.device* %113, i32 %116, i32* null, i32 %117, i32 %118, i32 %121, %struct.rohm_ts_data* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %153

131:                                              ; preds = %112
  %132 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %133 = call i32 @input_register_device(%struct.input_dev* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.device*, %struct.device** %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %153

141:                                              ; preds = %131
  %142 = load %struct.device*, %struct.device** %6, align 8
  %143 = call i32 @devm_device_add_group(%struct.device* %142, i32* @rohm_ts_attr_group)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.device*, %struct.device** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %153

151:                                              ; preds = %141
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %146, %136, %126, %108, %65, %48, %40, %30, %16
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @rohm_ts_power_off(%struct.i2c_client*) #1

declare dso_local %struct.rohm_ts_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rohm_ts_data*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.rohm_ts_data*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.rohm_ts_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @devm_device_add_group(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
