; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_adt746x.c_thermostat_remove_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_adt746x.c_thermostat_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermostat = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@dev_attr_sensor1_temperature = common dso_local global i32 0, align 4
@dev_attr_sensor2_temperature = common dso_local global i32 0, align 4
@dev_attr_sensor1_limit = common dso_local global i32 0, align 4
@dev_attr_sensor2_limit = common dso_local global i32 0, align 4
@dev_attr_sensor1_location = common dso_local global i32 0, align 4
@dev_attr_sensor2_location = common dso_local global i32 0, align 4
@dev_attr_limit_adjust = common dso_local global i32 0, align 4
@dev_attr_specified_fan_speed = common dso_local global i32 0, align 4
@dev_attr_sensor1_fan_speed = common dso_local global i32 0, align 4
@ADT7460 = common dso_local global i64 0, align 8
@dev_attr_sensor2_fan_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermostat*)* @thermostat_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thermostat_remove_files(%struct.thermostat* %0) #0 {
  %2 = alloca %struct.thermostat*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.thermostat* %0, %struct.thermostat** %2, align 8
  %4 = load %struct.thermostat*, %struct.thermostat** %2, align 8
  %5 = getelementptr inbounds %struct.thermostat, %struct.thermostat* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.thermostat*, %struct.thermostat** %2, align 8
  %11 = getelementptr inbounds %struct.thermostat, %struct.thermostat* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %3, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @device_remove_file(%struct.device* %14, i32* @dev_attr_sensor1_temperature)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @device_remove_file(%struct.device* %16, i32* @dev_attr_sensor2_temperature)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @device_remove_file(%struct.device* %18, i32* @dev_attr_sensor1_limit)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_remove_file(%struct.device* %20, i32* @dev_attr_sensor2_limit)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @device_remove_file(%struct.device* %22, i32* @dev_attr_sensor1_location)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @device_remove_file(%struct.device* %24, i32* @dev_attr_sensor2_location)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @device_remove_file(%struct.device* %26, i32* @dev_attr_limit_adjust)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @device_remove_file(%struct.device* %28, i32* @dev_attr_specified_fan_speed)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @device_remove_file(%struct.device* %30, i32* @dev_attr_sensor1_fan_speed)
  %32 = load %struct.thermostat*, %struct.thermostat** %2, align 8
  %33 = getelementptr inbounds %struct.thermostat, %struct.thermostat* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ADT7460, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %9
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @device_remove_file(%struct.device* %38, i32* @dev_attr_sensor2_fan_speed)
  br label %40

40:                                               ; preds = %37, %9
  %41 = load %struct.thermostat*, %struct.thermostat** %2, align 8
  %42 = getelementptr inbounds %struct.thermostat, %struct.thermostat* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @of_device_unregister(%struct.TYPE_2__* %43)
  br label %45

45:                                               ; preds = %40, %8
  ret void
}

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @of_device_unregister(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
