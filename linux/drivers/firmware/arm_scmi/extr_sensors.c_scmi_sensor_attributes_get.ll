; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.sensors_info = type { i32, i32, i32, i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_resp_sensor_attributes* }
%struct.scmi_msg_resp_sensor_attributes = type { i32, i32, i32, i32, i32 }

@PROTOCOL_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.sensors_info*)* @scmi_sensor_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_sensor_attributes_get(%struct.scmi_handle* %0, %struct.sensors_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.sensors_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_xfer*, align 8
  %8 = alloca %struct.scmi_msg_resp_sensor_attributes*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.sensors_info* %1, %struct.sensors_info** %5, align 8
  %9 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %10 = load i32, i32* @PROTOCOL_ATTRIBUTES, align 4
  %11 = load i32, i32* @SCMI_PROTOCOL_SENSOR, align 4
  %12 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %9, i32 %10, i32 %11, i32 0, i32 20, %struct.scmi_xfer** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %19 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.scmi_msg_resp_sensor_attributes*, %struct.scmi_msg_resp_sensor_attributes** %20, align 8
  store %struct.scmi_msg_resp_sensor_attributes* %21, %struct.scmi_msg_resp_sensor_attributes** %8, align 8
  %22 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %23 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %24 = call i32 @scmi_do_xfer(%struct.scmi_handle* %22, %struct.scmi_xfer* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %17
  %28 = load %struct.scmi_msg_resp_sensor_attributes*, %struct.scmi_msg_resp_sensor_attributes** %8, align 8
  %29 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, %struct.scmi_msg_resp_sensor_attributes* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %33 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.scmi_msg_resp_sensor_attributes*, %struct.scmi_msg_resp_sensor_attributes** %8, align 8
  %35 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, %struct.scmi_msg_resp_sensor_attributes* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %38 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.scmi_msg_resp_sensor_attributes*, %struct.scmi_msg_resp_sensor_attributes** %8, align 8
  %40 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, %struct.scmi_msg_resp_sensor_attributes* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.scmi_msg_resp_sensor_attributes*, %struct.scmi_msg_resp_sensor_attributes** %8, align 8
  %44 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, %struct.scmi_msg_resp_sensor_attributes* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = shl i32 %46, 32
  %48 = or i32 %42, %47
  %49 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %50 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.scmi_msg_resp_sensor_attributes*, %struct.scmi_msg_resp_sensor_attributes** %8, align 8
  %52 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, %struct.scmi_msg_resp_sensor_attributes* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %56 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %27, %17
  %58 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %59 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %60 = call i32 @scmi_xfer_put(%struct.scmi_handle* %58, %struct.scmi_xfer* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
