; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9553.c_mma9553_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i8* }
%struct.mma9553_data = type { i32, %struct.i2c_client* }
%struct.iio_dev = type { i8*, %struct.TYPE_2__, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@mma9553_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mma9553_info = common dso_local global i32 0, align 4
@mma9553_irq_handler = common dso_local global i32 0, align 4
@mma9553_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@MMA9553_IRQ_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"request irq %d failed\0A\00", align 1
@MMA9551_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to register iio device\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Registered device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mma9553_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9553_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mma9553_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 16)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %140

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.mma9553_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.mma9553_data* %20, %struct.mma9553_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.iio_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %26 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %25, i32 0, i32 1
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %28 = icmp ne %struct.i2c_device_id* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  br label %46

33:                                               ; preds = %18
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = call i64 @ACPI_HANDLE(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = call i8* @mma9553_match_acpi_device(i32* %40)
  store i8* %41, i8** %8, align 8
  br label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %140

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %48 = getelementptr inbounds %struct.mma9553_data, %struct.mma9553_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %51 = call i32 @mma9553_init_events(%struct.mma9553_data* %50)
  %52 = load %struct.mma9553_data*, %struct.mma9553_data** %6, align 8
  %53 = call i32 @mma9553_init(%struct.mma9553_data* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %140

58:                                               ; preds = %46
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  %64 = load i32, i32* @mma9553_channels, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @mma9553_channels, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %75 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 2
  store i32* @mma9553_info, i32** %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %58
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 1
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @mma9553_irq_handler, align 4
  %90 = load i32, i32* @mma9553_event_handler, align 4
  %91 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %92 = load i32, i32* @MMA9553_IRQ_NAME, align 4
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = call i32 @devm_request_threaded_irq(i32* %85, i64 %88, i32 %89, i32 %90, i32 %91, i32 %92, %struct.iio_dev* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %83
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %102)
  br label %136

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %104, %58
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 1
  %108 = call i32 @pm_runtime_set_active(i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %136

112:                                              ; preds = %105
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 1
  %115 = call i32 @pm_runtime_enable(i32* %114)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 1
  %118 = load i32, i32* @MMA9551_AUTO_SUSPEND_DELAY_MS, align 4
  %119 = call i32 @pm_runtime_set_autosuspend_delay(i32* %117, i32 %118)
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 1
  %122 = call i32 @pm_runtime_use_autosuspend(i32* %121)
  %123 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %124 = call i32 @iio_device_register(%struct.iio_dev* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %112
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 1
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %136

131:                                              ; preds = %112
  %132 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 1
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @dev_dbg(%struct.TYPE_2__* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  store i32 0, i32* %3, align 4
  br label %140

136:                                              ; preds = %127, %111, %97
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = call i32 @mma9551_set_device_state(%struct.i2c_client* %137, i32 0)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %131, %56, %42, %15
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.mma9553_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i8* @mma9553_match_acpi_device(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mma9553_init_events(%struct.mma9553_data*) #1

declare dso_local i32 @mma9553_init(%struct.mma9553_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @mma9551_set_device_state(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
