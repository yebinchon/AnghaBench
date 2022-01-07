; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adt7470_data = type { i32, %struct.device*, i32, %struct.i2c_client*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUTO_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s chip found\0A\00", align 1
@adt7470_groups = common dso_local global i32 0, align 4
@adt7470_update_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adt7470_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7470_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.adt7470_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.adt7470_data* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.adt7470_data* %13, %struct.adt7470_data** %7, align 8
  %14 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %15 = icmp ne %struct.adt7470_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %21 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load i32, i32* @AUTO_UPDATE_INTERVAL, align 4
  %23 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %24 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.adt7470_data* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %30 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %29, i32 0, i32 3
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %32 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_info(%struct.device* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @adt7470_init_client(%struct.i2c_client* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %47 = load i32, i32* @adt7470_groups, align 4
  %48 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %42, i32 %45, %struct.adt7470_data* %46, i32 %47)
  store %struct.device* %48, %struct.device** %8, align 8
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = call i64 @IS_ERR(%struct.device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %19
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = call i32 @PTR_ERR(%struct.device* %53)
  store i32 %54, i32* %3, align 4
  br label %74

55:                                               ; preds = %19
  %56 = load i32, i32* @adt7470_update_thread, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load %struct.device*, %struct.device** %8, align 8
  %59 = call i32 @dev_name(%struct.device* %58)
  %60 = call %struct.device* @kthread_run(i32 %56, %struct.i2c_client* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %62 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %61, i32 0, i32 1
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %64 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %63, i32 0, i32 1
  %65 = load %struct.device*, %struct.device** %64, align 8
  %66 = call i64 @IS_ERR(%struct.device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %70 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %69, i32 0, i32 1
  %71 = load %struct.device*, %struct.device** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.device* %71)
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %52, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.adt7470_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adt7470_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @adt7470_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.adt7470_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.device* @kthread_run(i32, %struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
