; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_reading_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_reading_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.sensors_info* }
%struct.sensors_info = type { %struct.scmi_sensor_info* }
%struct.scmi_sensor_info = type { i64 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.scmi_msg_sensor_reading_get* }
%struct.scmi_msg_sensor_reading_get = type { i8*, i8* }

@SENSOR_READING_GET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_SENSOR = common dso_local global i32 0, align 4
@SENSOR_READ_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32*)* @scmi_sensor_reading_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_sensor_reading_get(%struct.scmi_handle* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca %struct.scmi_msg_sensor_reading_get*, align 8
  %11 = alloca %struct.sensors_info*, align 8
  %12 = alloca %struct.scmi_sensor_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %14 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %13, i32 0, i32 0
  %15 = load %struct.sensors_info*, %struct.sensors_info** %14, align 8
  store %struct.sensors_info* %15, %struct.sensors_info** %11, align 8
  %16 = load %struct.sensors_info*, %struct.sensors_info** %11, align 8
  %17 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %16, i32 0, i32 0
  %18 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %18, i64 %20
  store %struct.scmi_sensor_info* %21, %struct.scmi_sensor_info** %12, align 8
  %22 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %23 = load i32, i32* @SENSOR_READING_GET, align 4
  %24 = load i32, i32* @SCMI_PROTOCOL_SENSOR, align 4
  %25 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %22, i32 %23, i32 %24, i32 16, i32 4, %struct.scmi_xfer** %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %86

30:                                               ; preds = %3
  %31 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %32 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.scmi_msg_sensor_reading_get*, %struct.scmi_msg_sensor_reading_get** %33, align 8
  store %struct.scmi_msg_sensor_reading_get* %34, %struct.scmi_msg_sensor_reading_get** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.scmi_msg_sensor_reading_get*, %struct.scmi_msg_sensor_reading_get** %10, align 8
  %38 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, %struct.scmi_msg_sensor_reading_get* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %12, align 8
  %40 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %30
  %44 = load i32, i32* @SENSOR_READ_ASYNC, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.scmi_msg_sensor_reading_get*, %struct.scmi_msg_sensor_reading_get** %10, align 8
  %47 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, %struct.scmi_msg_sensor_reading_get* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %49 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %50 = call i32 @scmi_do_xfer_with_response(%struct.scmi_handle* %48, %struct.scmi_xfer* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %55 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = bitcast i32* %59 to i8*
  %61 = call i32 @get_unaligned_le64(i8* %60)
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %53, %43
  br label %81

64:                                               ; preds = %30
  %65 = call i8* @cpu_to_le32(i32 0)
  %66 = load %struct.scmi_msg_sensor_reading_get*, %struct.scmi_msg_sensor_reading_get** %10, align 8
  %67 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, %struct.scmi_msg_sensor_reading_get* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %69 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %70 = call i32 @scmi_do_xfer(%struct.scmi_handle* %68, %struct.scmi_xfer* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %64
  %74 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %75 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @get_unaligned_le64(i8* %77)
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %64
  br label %81

81:                                               ; preds = %80, %63
  %82 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %83 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %84 = call i32 @scmi_xfer_put(%struct.scmi_handle* %82, %struct.scmi_xfer* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %28
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmi_do_xfer_with_response(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @get_unaligned_le64(i8*) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
