; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_configure_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_configure_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { %struct.rmi_device* }
%struct.rmi_device = type { i32 }
%struct.rmi_2d_sensor = type { i64 }
%struct.rmi_driver_data = type { i64 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmi_2d_sensor_configure_input(%struct.rmi_function* %0, %struct.rmi_2d_sensor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_function*, align 8
  %5 = alloca %struct.rmi_2d_sensor*, align 8
  %6 = alloca %struct.rmi_device*, align 8
  %7 = alloca %struct.rmi_driver_data*, align 8
  store %struct.rmi_function* %0, %struct.rmi_function** %4, align 8
  store %struct.rmi_2d_sensor* %1, %struct.rmi_2d_sensor** %5, align 8
  %8 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %9 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %8, i32 0, i32 0
  %10 = load %struct.rmi_device*, %struct.rmi_device** %9, align 8
  store %struct.rmi_device* %10, %struct.rmi_device** %6, align 8
  %11 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %12 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %11, i32 0, i32 0
  %13 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %12)
  store %struct.rmi_driver_data* %13, %struct.rmi_driver_data** %7, align 8
  %14 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %15 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %23 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %26 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %28 = call i32 @rmi_2d_sensor_set_input_params(%struct.rmi_2d_sensor* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_2d_sensor_set_input_params(%struct.rmi_2d_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
