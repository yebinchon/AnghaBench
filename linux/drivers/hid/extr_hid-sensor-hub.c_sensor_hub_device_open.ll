; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.sensor_hub_data = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to open hid device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sensor_hub_device_open(%struct.hid_sensor_hub_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_sensor_hub_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sensor_hub_data*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sensor_hub_data* @hid_get_drvdata(i32 %8)
  store %struct.sensor_hub_data* %9, %struct.sensor_hub_data** %5, align 8
  %10 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %5, align 8
  %11 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %5, align 8
  %14 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %1
  %18 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %3, align 8
  %19 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hid_hw_open(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %3, align 8
  %26 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hid_err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %5, align 8
  %30 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %5, align 8
  %36 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %5, align 8
  %40 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.sensor_hub_data* @hid_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hid_hw_open(i32) #1

declare dso_local i32 @hid_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
