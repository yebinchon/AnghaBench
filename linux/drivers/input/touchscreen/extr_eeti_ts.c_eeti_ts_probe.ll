; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.eeti_ts = type { i32, %struct.input_dev*, %struct.i2c_client*, i32, i32 }
%struct.input_dev = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate input device.\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@EETI_MAXVAL = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@eeti_ts_open = common dso_local global i32 0, align 4
@eeti_ts_close = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"attn\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@eeti_ts_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to request touchscreen IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @eeti_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeti_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.eeti_ts*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.eeti_ts* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.eeti_ts* %14, %struct.eeti_ts** %7, align 8
  %15 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %16 = icmp ne %struct.eeti_ts* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %126

22:                                               ; preds = %2
  %23 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %24 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %23, i32 0, i32 4
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %26)
  store %struct.input_dev* %27, %struct.input_dev** %8, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %126

35:                                               ; preds = %22
  %36 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %37 = load i32, i32* @EV_KEY, align 4
  %38 = load i32, i32* @BTN_TOUCH, align 4
  %39 = call i32 @input_set_capability(%struct.input_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %41 = load i32, i32* @ABS_X, align 4
  %42 = load i32, i32* @EETI_MAXVAL, align 4
  %43 = call i32 @input_set_abs_params(%struct.input_dev* %40, i32 %41, i32 0, i32 %42, i32 0, i32 0)
  %44 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %45 = load i32, i32* @ABS_Y, align 4
  %46 = load i32, i32* @EETI_MAXVAL, align 4
  %47 = call i32 @input_set_abs_params(%struct.input_dev* %44, i32 %45, i32 0, i32 %46, i32 0, i32 0)
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = load i32, i32* @ABS_PRESSURE, align 4
  %50 = call i32 @input_set_abs_params(%struct.input_dev* %48, i32 %49, i32 0, i32 255, i32 0, i32 0)
  %51 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %52 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %53 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %52, i32 0, i32 3
  %54 = call i32 @touchscreen_parse_properties(%struct.input_dev* %51, i32 0, i32* %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @BUS_I2C, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @eeti_ts_open, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @eeti_ts_close, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %72 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %71, i32 0, i32 2
  store %struct.i2c_client* %70, %struct.i2c_client** %72, align 8
  %73 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %74 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %75 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %74, i32 0, i32 1
  store %struct.input_dev* %73, %struct.input_dev** %75, align 8
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* @GPIOD_IN, align 4
  %78 = call i32 @devm_gpiod_get_optional(%struct.device* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %80 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %82 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %35
  %87 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %88 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %3, align 4
  br label %126

91:                                               ; preds = %35
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %94 = call i32 @i2c_set_clientdata(%struct.i2c_client* %92, %struct.eeti_ts* %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %97 = call i32 @input_set_drvdata(%struct.input_dev* %95, %struct.eeti_ts* %96)
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @eeti_ts_isr, align 4
  %103 = load i32, i32* @IRQF_ONESHOT, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %108 = call i32 @devm_request_threaded_irq(%struct.device* %98, i32 %101, i32* null, i32 %102, i32 %103, i32 %106, %struct.eeti_ts* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %91
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %126

116:                                              ; preds = %91
  %117 = load %struct.eeti_ts*, %struct.eeti_ts** %7, align 8
  %118 = call i32 @eeti_ts_stop(%struct.eeti_ts* %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %120 = call i32 @input_register_device(%struct.input_dev* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %111, %86, %30, %17
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.eeti_ts* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.eeti_ts*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.eeti_ts*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.eeti_ts*) #1

declare dso_local i32 @eeti_ts_stop(%struct.eeti_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
