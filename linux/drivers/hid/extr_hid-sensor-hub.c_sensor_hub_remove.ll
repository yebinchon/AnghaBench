; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.sensor_hub_data = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c" hardware removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @sensor_hub_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sensor_hub_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.sensor_hub_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %8 = call %struct.sensor_hub_data* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.sensor_hub_data* %8, %struct.sensor_hub_data** %3, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %10 = call i32 @hid_dbg(%struct.hid_device* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %12 = call i32 @hid_hw_close(%struct.hid_device* %11)
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = call i32 @hid_hw_stop(%struct.hid_device* %13)
  %15 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %3, align 8
  %16 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %15, i32 0, i32 2
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %45, %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %3, align 8
  %22 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %3, align 8
  %27 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %32, align 8
  store %struct.hid_sensor_hub_device* %33, %struct.hid_sensor_hub_device** %6, align 8
  %34 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %41 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @complete(i32* %42)
  br label %44

44:                                               ; preds = %39, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %3, align 8
  %50 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %49, i32 0, i32 2
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %54 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 0
  %55 = call i32 @mfd_remove_devices(i32* %54)
  %56 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %3, align 8
  %57 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_destroy(i32* %57)
  ret void
}

declare dso_local %struct.sensor_hub_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
