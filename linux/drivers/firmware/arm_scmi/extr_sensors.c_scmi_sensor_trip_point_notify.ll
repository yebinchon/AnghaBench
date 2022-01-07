; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_trip_point_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_trip_point_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_sensor_trip_point_notify* }
%struct.scmi_msg_sensor_trip_point_notify = type { i8*, i8* }

@SENSOR_TP_NOTIFY_ALL = common dso_local global i32 0, align 4
@SENSOR_TRIP_POINT_NOTIFY = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32)* @scmi_sensor_trip_point_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_sensor_trip_point_notify(%struct.scmi_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scmi_xfer*, align 8
  %11 = alloca %struct.scmi_msg_sensor_trip_point_notify*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SENSOR_TP_NOTIFY_ALL, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %9, align 4
  %19 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %20 = load i32, i32* @SENSOR_TRIP_POINT_NOTIFY, align 4
  %21 = load i32, i32* @SCMI_PROTOCOL_SENSOR, align 4
  %22 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %19, i32 %20, i32 %21, i32 16, i32 0, %struct.scmi_xfer** %10)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %17
  %28 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %29 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.scmi_msg_sensor_trip_point_notify*, %struct.scmi_msg_sensor_trip_point_notify** %30, align 8
  store %struct.scmi_msg_sensor_trip_point_notify* %31, %struct.scmi_msg_sensor_trip_point_notify** %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.scmi_msg_sensor_trip_point_notify*, %struct.scmi_msg_sensor_trip_point_notify** %11, align 8
  %35 = getelementptr inbounds %struct.scmi_msg_sensor_trip_point_notify, %struct.scmi_msg_sensor_trip_point_notify* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.scmi_msg_sensor_trip_point_notify*, %struct.scmi_msg_sensor_trip_point_notify** %11, align 8
  %39 = getelementptr inbounds %struct.scmi_msg_sensor_trip_point_notify, %struct.scmi_msg_sensor_trip_point_notify* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %41 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %42 = call i32 @scmi_do_xfer(%struct.scmi_handle* %40, %struct.scmi_xfer* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %44 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %45 = call i32 @scmi_xfer_put(%struct.scmi_handle* %43, %struct.scmi_xfer* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %27, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
