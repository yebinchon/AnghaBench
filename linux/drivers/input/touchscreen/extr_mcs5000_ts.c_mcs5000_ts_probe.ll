; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mcs5000_ts.c_mcs5000_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mcs5000_ts.c_mcs5000_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.mcs_platform_data = type { i32 (...)* }
%struct.mcs5000_ts_data = type { %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MELFAS MCS-5000 Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MCS5000_MAX_XC = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MCS5000_MAX_YC = common dso_local global i32 0, align 4
@mcs5000_ts_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"mcs5000_ts\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcs5000_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs5000_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mcs_platform_data*, align 8
  %7 = alloca %struct.mcs5000_ts_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.mcs_platform_data* @dev_get_platdata(i32* %11)
  store %struct.mcs_platform_data* %12, %struct.mcs_platform_data** %6, align 8
  %13 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %14 = icmp ne %struct.mcs_platform_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %131

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mcs5000_ts_data* @devm_kzalloc(i32* %20, i32 16, i32 %21)
  store %struct.mcs5000_ts_data* %22, %struct.mcs5000_ts_data** %7, align 8
  %23 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %24 = icmp ne %struct.mcs5000_ts_data* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %131

31:                                               ; preds = %18
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %34 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %33, i32 0, i32 1
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call %struct.input_dev* @devm_input_allocate_device(i32* %36)
  store %struct.input_dev* %37, %struct.input_dev** %8, align 8
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = icmp ne %struct.input_dev* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %131

46:                                               ; preds = %31
  %47 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @BUS_I2C, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  %58 = load i32, i32* @EV_ABS, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__set_bit(i32 %58, i32 %61)
  %63 = load i32, i32* @EV_KEY, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__set_bit(i32 %63, i32 %66)
  %68 = load i32, i32* @BTN_TOUCH, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %74 = load i32, i32* @ABS_X, align 4
  %75 = load i32, i32* @MCS5000_MAX_XC, align 4
  %76 = call i32 @input_set_abs_params(%struct.input_dev* %73, i32 %74, i32 0, i32 %75, i32 0, i32 0)
  %77 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %78 = load i32, i32* @ABS_Y, align 4
  %79 = load i32, i32* @MCS5000_MAX_YC, align 4
  %80 = call i32 @input_set_abs_params(%struct.input_dev* %77, i32 %78, i32 0, i32 %79, i32 0, i32 0)
  %81 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %82 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %83 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %82, i32 0, i32 0
  store %struct.input_dev* %81, %struct.input_dev** %83, align 8
  %84 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %85 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %84, i32 0, i32 0
  %86 = load i32 (...)*, i32 (...)** %85, align 8
  %87 = icmp ne i32 (...)* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %46
  %89 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %90 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %89, i32 0, i32 0
  %91 = load i32 (...)*, i32 (...)** %90, align 8
  %92 = call i32 (...) %91()
  br label %93

93:                                               ; preds = %88, %46
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @mcs5000_ts_interrupt, align 4
  %100 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %101 = load i32, i32* @IRQF_ONESHOT, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %104 = call i32 @devm_request_threaded_irq(i32* %95, i32 %98, i32* null, i32 %99, i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.mcs5000_ts_data* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %93
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %131

112:                                              ; preds = %93
  %113 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %114 = getelementptr inbounds %struct.mcs5000_ts_data, %struct.mcs5000_ts_data* %113, i32 0, i32 0
  %115 = load %struct.input_dev*, %struct.input_dev** %114, align 8
  %116 = call i32 @input_register_device(%struct.input_dev* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %131

124:                                              ; preds = %112
  %125 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %126 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %127 = call i32 @mcs5000_ts_phys_init(%struct.mcs5000_ts_data* %125, %struct.mcs_platform_data* %126)
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = load %struct.mcs5000_ts_data*, %struct.mcs5000_ts_data** %7, align 8
  %130 = call i32 @i2c_set_clientdata(%struct.i2c_client* %128, %struct.mcs5000_ts_data* %129)
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %119, %107, %40, %25, %15
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.mcs_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.mcs5000_ts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.mcs5000_ts_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @mcs5000_ts_phys_init(%struct.mcs5000_ts_data*, %struct.mcs_platform_data*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mcs5000_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
