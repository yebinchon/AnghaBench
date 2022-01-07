; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_stk3310.c_stk3310_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.stk3310_data = type { i32, %struct.i2c_client* }

@.str = private unnamed_addr constant [24 x i8] c"iio allocation failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@stk3310_info = common dso_local global i32 0, align 4
@STK3310_DRIVER_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@stk3310_channels = common dso_local global i32 0, align 4
@stk3310_irq_handler = common dso_local global i32 0, align 4
@stk3310_irq_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@STK3310_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"request irq %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"device_register failed\0A\00", align 1
@STK3310_STATE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stk3310_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk3310_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.stk3310_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %109

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call %struct.stk3310_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.stk3310_data* %22, %struct.stk3310_data** %8, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.stk3310_data*, %struct.stk3310_data** %8, align 8
  %25 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.iio_dev* %27)
  %29 = load %struct.stk3310_data*, %struct.stk3310_data** %8, align 8
  %30 = getelementptr inbounds %struct.stk3310_data, %struct.stk3310_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.stk3310_data*, %struct.stk3310_data** %8, align 8
  %33 = call i32 @stk3310_regmap_init(%struct.stk3310_data* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %109

38:                                               ; preds = %20
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 4
  store i32* @stk3310_info, i32** %45, align 8
  %46 = load i32, i32* @STK3310_DRIVER_NAME, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @stk3310_channels, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @stk3310_channels, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = call i32 @stk3310_init(%struct.iio_dev* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %38
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %109

65:                                               ; preds = %38
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 1
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @stk3310_irq_handler, align 4
  %77 = load i32, i32* @stk3310_irq_event_handler, align 4
  %78 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %79 = load i32, i32* @IRQF_ONESHOT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @STK3310_EVENT, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %83 = call i32 @devm_request_threaded_irq(i32* %72, i64 %75, i32 %76, i32 %77, i32 %80, i32 %81, %struct.iio_dev* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %70
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  br label %104

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %96 = call i32 @iio_device_register(%struct.iio_dev* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 1
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %104

103:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %109

104:                                              ; preds = %99, %86
  %105 = load %struct.stk3310_data*, %struct.stk3310_data** %8, align 8
  %106 = load i32, i32* @STK3310_STATE_STANDBY, align 4
  %107 = call i32 @stk3310_set_state(%struct.stk3310_data* %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %103, %63, %36, %14
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.stk3310_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stk3310_regmap_init(%struct.stk3310_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @stk3310_init(%struct.iio_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @stk3310_set_state(%struct.stk3310_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
