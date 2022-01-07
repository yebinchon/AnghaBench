; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_description_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_sensors.c_scmi_sensor_description_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.sensors_info = type { i64, %struct.scmi_sensor_info* }
%struct.scmi_sensor_info = type { i32, i32, i32, i32, i32, i8* }
%struct.scmi_xfer = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.scmi_msg_resp_sensor_description* }
%struct.scmi_msg_resp_sensor_description = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@SENSOR_DESCRIPTION_GET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_SENSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No. of sensors can't exceed %d\00", align 1
@SENSOR_SCALE_SIGN = common dso_local global i32 0, align 4
@SENSOR_SCALE_EXTEND = common dso_local global i32 0, align 4
@SCMI_MAX_STR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.sensors_info*)* @scmi_sensor_description_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_sensor_description_get(%struct.scmi_handle* %0, %struct.sensors_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.sensors_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scmi_xfer*, align 8
  %12 = alloca %struct.scmi_msg_resp_sensor_description*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.scmi_sensor_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.sensors_info* %1, %struct.sensors_info** %5, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %17 = load i32, i32* @SENSOR_DESCRIPTION_GET, align 4
  %18 = load i32, i32* @SCMI_PROTOCOL_SENSOR, align 4
  %19 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %16, i32 %17, i32 %18, i32 4, i32 0, %struct.scmi_xfer** %11)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %174

24:                                               ; preds = %2
  %25 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %26 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %27, align 8
  store %struct.scmi_msg_resp_sensor_description* %28, %struct.scmi_msg_resp_sensor_description** %12, align 8
  br label %29

29:                                               ; preds = %167, %24
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %32 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @put_unaligned_le32(i64 %30, i32 %34)
  %36 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %37 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %38 = call i32 @scmi_do_xfer(%struct.scmi_handle* %36, %struct.scmi_xfer* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %169

42:                                               ; preds = %29
  %43 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %12, align 8
  %44 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, %struct.scmi_msg_resp_sensor_description* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le16_to_cpu(i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %12, align 8
  %48 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, %struct.scmi_msg_resp_sensor_description* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @le16_to_cpu(i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %55 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %60 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %63 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %169

66:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %154, %66
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %157

72:                                               ; preds = %67
  %73 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %12, align 8
  %74 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, %struct.scmi_msg_resp_sensor_description* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le32_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %14, align 8
  %83 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %12, align 8
  %84 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, %struct.scmi_msg_resp_sensor_description* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %13, align 8
  %93 = load %struct.sensors_info*, %struct.sensors_info** %5, align 8
  %94 = getelementptr inbounds %struct.sensors_info, %struct.sensors_info* %93, i32 0, i32 1
  %95 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %95, i64 %99
  store %struct.scmi_sensor_info* %100, %struct.scmi_sensor_info** %15, align 8
  %101 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %12, align 8
  %102 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, %struct.scmi_msg_resp_sensor_description* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @le32_to_cpu(i32 %108)
  %110 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %111 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @SENSOR_TYPE(i64 %112)
  %114 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %115 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @SENSOR_SCALE(i64 %116)
  %118 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %119 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %121 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SENSOR_SCALE_SIGN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %72
  %127 = load i32, i32* @SENSOR_SCALE_EXTEND, align 4
  %128 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %129 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %72
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @SUPPORTS_ASYNC_READ(i64 %133)
  %135 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %136 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @NUM_TRIP_POINTS(i64 %137)
  %139 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %140 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.scmi_sensor_info*, %struct.scmi_sensor_info** %15, align 8
  %142 = getelementptr inbounds %struct.scmi_sensor_info, %struct.scmi_sensor_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.scmi_msg_resp_sensor_description*, %struct.scmi_msg_resp_sensor_description** %12, align 8
  %145 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, %struct.scmi_msg_resp_sensor_description* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %153 = call i32 @strlcpy(i32 %143, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %132
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %67

157:                                              ; preds = %67
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %9, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, i64* %10, align 8
  %166 = icmp ne i64 %165, 0
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi i1 [ false, %161 ], [ %166, %164 ]
  br i1 %168, label %29, label %169

169:                                              ; preds = %167, %58, %41
  %170 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %171 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %172 = call i32 @scmi_xfer_put(%struct.scmi_handle* %170, %struct.scmi_xfer* %171)
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %169, %22
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i64, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @SENSOR_TYPE(i64) #1

declare dso_local i32 @SENSOR_SCALE(i64) #1

declare dso_local i32 @SUPPORTS_ASYNC_READ(i64) #1

declare dso_local i32 @NUM_TRIP_POINTS(i64) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
