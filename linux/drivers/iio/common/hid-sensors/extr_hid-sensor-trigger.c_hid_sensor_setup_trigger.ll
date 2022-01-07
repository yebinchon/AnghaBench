; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c_hid_sensor_setup_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-trigger.c_hid_sensor_setup_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.hid_sensor_common = type { %struct.TYPE_6__*, i32, %struct.iio_trigger* }
%struct.TYPE_6__ = type { i32 }
%struct.iio_trigger = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Trigger Allocate Failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hid_sensor_trigger_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Trigger Register Failed\0A\00", align 1
@hid_sensor_set_power_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_sensor_setup_trigger(%struct.iio_dev* %0, i8* %1, %struct.hid_sensor_common* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hid_sensor_common*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_trigger*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hid_sensor_common* %2, %struct.hid_sensor_common** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.iio_trigger* @iio_trigger_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %13)
  store %struct.iio_trigger* %14, %struct.iio_trigger** %9, align 8
  %15 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %16 = icmp eq %struct.iio_trigger* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %86

23:                                               ; preds = %3
  %24 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %29 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %32 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %33 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %31, %struct.hid_sensor_common* %32)
  %34 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %35 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %34, i32 0, i32 0
  store i32* @hid_sensor_trigger_ops, i32** %35, align 8
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %37 = call i32 @iio_trigger_register(%struct.iio_trigger* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_err(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %83

44:                                               ; preds = %23
  %45 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %46 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %47 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %46, i32 0, i32 2
  store %struct.iio_trigger* %45, %struct.iio_trigger** %47, align 8
  %48 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %49 = call i32 @iio_trigger_get(%struct.iio_trigger* %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %54 = call i32 @hid_sensor_setup_batch_mode(%struct.iio_dev* %52, %struct.hid_sensor_common* %53)
  %55 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_set_active(%struct.TYPE_7__* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %80

61:                                               ; preds = %44
  %62 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %63 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %64 = call i32 @iio_device_set_drvdata(%struct.iio_dev* %62, %struct.hid_sensor_common* %63)
  %65 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %66 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %65, i32 0, i32 1
  %67 = load i32, i32* @hid_sensor_set_power_work, align 4
  %68 = call i32 @INIT_WORK(i32* %66, i32 %67)
  %69 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %70 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @pm_suspend_ignore_children(i32* %72, i32 1)
  %74 = load %struct.hid_sensor_common*, %struct.hid_sensor_common** %7, align 8
  %75 = getelementptr inbounds %struct.hid_sensor_common, %struct.hid_sensor_common* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @pm_runtime_set_autosuspend_delay(i32* %77, i32 3000)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %88

80:                                               ; preds = %60
  %81 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %82 = call i32 @iio_trigger_unregister(%struct.iio_trigger* %81)
  br label %83

83:                                               ; preds = %80, %40
  %84 = load %struct.iio_trigger*, %struct.iio_trigger** %9, align 8
  %85 = call i32 @iio_trigger_free(%struct.iio_trigger* %84)
  br label %86

86:                                               ; preds = %83, %17
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %61
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.iio_trigger* @iio_trigger_alloc(i8*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.hid_sensor_common*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

declare dso_local i32 @iio_trigger_get(%struct.iio_trigger*) #1

declare dso_local i32 @hid_sensor_setup_batch_mode(%struct.iio_dev*, %struct.hid_sensor_common*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_7__*) #1

declare dso_local i32 @iio_device_set_drvdata(%struct.iio_dev*, %struct.hid_sensor_common*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @iio_trigger_unregister(%struct.iio_trigger*) #1

declare dso_local i32 @iio_trigger_free(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
