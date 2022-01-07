; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_trip_point_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_trip_point_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_set_sensor_trip_point* }
%struct.scmi_msg_set_sensor_trip_point = type { i8*, i8*, i8*, i8* }

@SENSOR_TP_BOTH = common dso_local global i32 0, align 4
@SENSOR_TRIP_POINT_CONFIG = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32, i32)* @scmi_sensor_trip_point_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_sensor_trip_point_config(%struct.scmi_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scmi_xfer*, align 8
  %13 = alloca %struct.scmi_msg_set_sensor_trip_point*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @SENSOR_TP_BOTH, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %16 = load i32, i32* @SENSOR_TRIP_POINT_CONFIG, align 4
  %17 = load i32, i32* @SCMI_PROTOCOL_SENSOR, align 4
  %18 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %15, i32 %16, i32 %17, i32 32, i32 0, %struct.scmi_xfer** %12)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load %struct.scmi_xfer*, %struct.scmi_xfer** %12, align 8
  %25 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.scmi_msg_set_sensor_trip_point*, %struct.scmi_msg_set_sensor_trip_point** %26, align 8
  store %struct.scmi_msg_set_sensor_trip_point* %27, %struct.scmi_msg_set_sensor_trip_point** %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.scmi_msg_set_sensor_trip_point*, %struct.scmi_msg_set_sensor_trip_point** %13, align 8
  %31 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, %struct.scmi_msg_set_sensor_trip_point* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SENSOR_TP_ID(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.scmi_msg_set_sensor_trip_point*, %struct.scmi_msg_set_sensor_trip_point** %13, align 8
  %38 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, %struct.scmi_msg_set_sensor_trip_point* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.scmi_msg_set_sensor_trip_point*, %struct.scmi_msg_set_sensor_trip_point** %13, align 8
  %42 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, %struct.scmi_msg_set_sensor_trip_point* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %43, 32
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.scmi_msg_set_sensor_trip_point*, %struct.scmi_msg_set_sensor_trip_point** %13, align 8
  %47 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, %struct.scmi_msg_set_sensor_trip_point* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %49 = load %struct.scmi_xfer*, %struct.scmi_xfer** %12, align 8
  %50 = call i32 @scmi_do_xfer(%struct.scmi_handle* %48, %struct.scmi_xfer* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %52 = load %struct.scmi_xfer*, %struct.scmi_xfer** %12, align 8
  %53 = call i32 @scmi_xfer_put(%struct.scmi_handle* %51, %struct.scmi_xfer* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %23, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @SENSOR_TP_ID(i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
