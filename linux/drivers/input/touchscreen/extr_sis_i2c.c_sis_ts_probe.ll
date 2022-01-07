; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sis_i2c.c_sis_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sis_i2c.c_sis_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.sis_ts_data = type { %struct.input_dev*, i8*, i8*, %struct.i2c_client* }
%struct.input_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"attn\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get attention GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get reset GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SiS Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@SIS_MAX_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@SIS_MAX_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@SIS_MAX_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@SIS_AREA_LENGTH_LONGER = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@SIS_AREA_LENGTH_SHORT = common dso_local global i32 0, align 4
@SIS_MAX_FINGERS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to initialize MT slots: %d\0A\00", align 1
@sis_ts_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sis_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.sis_ts_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sis_ts_data* @devm_kzalloc(i32* %10, i32 32, i32 %11)
  store %struct.sis_ts_data* %12, %struct.sis_ts_data** %6, align 8
  %13 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %14 = icmp ne %struct.sis_ts_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %167

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %21 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %20, i32 0, i32 3
  store %struct.i2c_client* %19, %struct.i2c_client** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GPIOD_IN, align 4
  %25 = call i8* @devm_gpiod_get_optional(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %27 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %29 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %18
  %34 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %35 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %167

49:                                               ; preds = %18
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %53 = call i8* @devm_gpiod_get_optional(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %55 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %57 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %49
  %62 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %63 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %167

77:                                               ; preds = %49
  %78 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %79 = call i32 @sis_ts_reset(%struct.sis_ts_data* %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call %struct.input_dev* @devm_input_allocate_device(i32* %81)
  store %struct.input_dev* %82, %struct.input_dev** %7, align 8
  %83 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %84 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %83, i32 0, i32 0
  store %struct.input_dev* %82, %struct.input_dev** %84, align 8
  %85 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %86 = icmp ne %struct.input_dev* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %77
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %167

93:                                               ; preds = %77
  %94 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %95, align 8
  %96 = load i32, i32* @BUS_I2C, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %101 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %102 = load i32, i32* @SIS_MAX_X, align 4
  %103 = call i32 @input_set_abs_params(%struct.input_dev* %100, i32 %101, i32 0, i32 %102, i32 0, i32 0)
  %104 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %105 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %106 = load i32, i32* @SIS_MAX_Y, align 4
  %107 = call i32 @input_set_abs_params(%struct.input_dev* %104, i32 %105, i32 0, i32 %106, i32 0, i32 0)
  %108 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %109 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %110 = load i32, i32* @SIS_MAX_PRESSURE, align 4
  %111 = call i32 @input_set_abs_params(%struct.input_dev* %108, i32 %109, i32 0, i32 %110, i32 0, i32 0)
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %114 = load i32, i32* @SIS_AREA_LENGTH_LONGER, align 4
  %115 = call i32 @input_set_abs_params(%struct.input_dev* %112, i32 %113, i32 0, i32 %114, i32 0, i32 0)
  %116 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %117 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %118 = load i32, i32* @SIS_AREA_LENGTH_SHORT, align 4
  %119 = call i32 @input_set_abs_params(%struct.input_dev* %116, i32 %117, i32 0, i32 %118, i32 0, i32 0)
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = load i32, i32* @SIS_MAX_FINGERS, align 4
  %122 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %123 = call i32 @input_mt_init_slots(%struct.input_dev* %120, i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %93
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %167

132:                                              ; preds = %93
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @sis_ts_irq_handler, align 4
  %139 = load i32, i32* @IRQF_ONESHOT, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %144 = call i32 @devm_request_threaded_irq(i32* %134, i32 %137, i32* null, i32 %138, i32 %139, i32 %142, %struct.sis_ts_data* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %167

153:                                              ; preds = %132
  %154 = load %struct.sis_ts_data*, %struct.sis_ts_data** %6, align 8
  %155 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %154, i32 0, i32 0
  %156 = load %struct.input_dev*, %struct.input_dev** %155, align 8
  %157 = call i32 @input_register_device(%struct.input_dev* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (i32*, i8*, ...) @dev_err(i32* %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %167

166:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %160, %147, %126, %87, %75, %47, %15
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.sis_ts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sis_ts_reset(%struct.sis_ts_data*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.sis_ts_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
