; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wdt87xx_data = type { i32, i32, i32, %struct.i2c_client* }

@.str = private unnamed_addr constant [28 x i8] c"adapter=%d, client irq: %d\0A\00", align 1
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"i2c-%u-%04x/input0\00", align 1
@wdt87xx_ts_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"request irq failed: %d\0A\00", align 1
@wdt87xx_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"create sysfs failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wdt87xx_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wdt87xx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* @I2C_FUNC_I2C, align 4
  %23 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %109

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.wdt87xx_data* @devm_kzalloc(i32* %30, i32 24, i32 %31)
  store %struct.wdt87xx_data* %32, %struct.wdt87xx_data** %6, align 8
  %33 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %34 = icmp ne %struct.wdt87xx_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %109

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %41 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %40, i32 0, i32 3
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %43 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %42, i32 0, i32 2
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %47 = call i32 @i2c_set_clientdata(%struct.i2c_client* %45, %struct.wdt87xx_data* %46)
  %48 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %49 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %62 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %61, i32 0, i32 0
  %63 = call i32 @wdt87xx_get_sysparam(%struct.i2c_client* %60, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %38
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %109

68:                                               ; preds = %38
  %69 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %70 = call i32 @wdt87xx_ts_create_input_device(%struct.wdt87xx_data* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %109

75:                                               ; preds = %68
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 1
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @wdt87xx_ts_interrupt, align 4
  %82 = load i32, i32* @IRQF_ONESHOT, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %6, align 8
  %87 = call i32 @devm_request_threaded_irq(i32* %77, i32 %80, i32* null, i32 %81, i32 %82, i32 %85, %struct.wdt87xx_data* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 1
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %109

96:                                               ; preds = %75
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = call i32 @devm_device_add_group(i32* %98, i32* @wdt87xx_attr_group)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 1
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %109

108:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %102, %90, %73, %66, %35, %25
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.wdt87xx_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wdt87xx_data*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wdt87xx_get_sysparam(%struct.i2c_client*, i32*) #1

declare dso_local i32 @wdt87xx_ts_create_input_device(%struct.wdt87xx_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.wdt87xx_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_device_add_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
