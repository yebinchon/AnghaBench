; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l785ts.c_w83l785ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l785ts.c_w83l785ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83l785ts_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sensor_dev_attr_temp1_input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sensor_dev_attr_temp1_max = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83l785ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l785ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.w83l785ts_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.w83l785ts_data* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.w83l785ts_data* %13, %struct.w83l785ts_data** %6, align 8
  %14 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %15 = icmp ne %struct.w83l785ts_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.w83l785ts_data* %21)
  %23 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %24 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call i32 @device_create_file(%struct.device* %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sensor_dev_attr_temp1_input, i32 0, i32 0))
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %19
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 @device_create_file(%struct.device* %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensor_dev_attr_temp1_max, i32 0, i32 0))
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %54

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call i32 @hwmon_device_register(%struct.device* %39)
  %41 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %42 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %44 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %50 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %48, %37
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = call i32 @device_remove_file(%struct.device* %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sensor_dev_attr_temp1_input, i32 0, i32 0))
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @device_remove_file(%struct.device* %57, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensor_dev_attr_temp1_max, i32 0, i32 0))
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %53, %30, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.w83l785ts_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83l785ts_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
