; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_parse_poll_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_parse_poll_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, %struct.occ_response, %struct.occ_sensors }
%struct.occ_response = type { i32* }
%struct.occ_sensors = type { %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor }
%struct.occ_sensor = type { i32, i32*, i32 }
%struct.occ_poll_response = type { %struct.occ_sensor_data_block, %struct.occ_poll_response_header }
%struct.occ_sensor_data_block = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.occ_poll_response_header = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"OCC found, code level: %.16s\0A\00", align 1
@OCC_RESP_DATA_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"exceeded response buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" %04x..%04x: %.4s (%d sensors)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FREQ\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"POWR\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"CAPS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"EXTN\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"sensor not supported %.4s\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Max resp size: %u+%zd=%zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.occ*)* @occ_parse_poll_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @occ_parse_poll_response(%struct.occ* %0) #0 {
  %2 = alloca %struct.occ*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.occ_sensor*, align 8
  %8 = alloca %struct.occ_sensors*, align 8
  %9 = alloca %struct.occ_response*, align 8
  %10 = alloca %struct.occ_poll_response*, align 8
  %11 = alloca %struct.occ_poll_response_header*, align 8
  %12 = alloca %struct.occ_sensor_data_block*, align 8
  store %struct.occ* %0, %struct.occ** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.occ*, %struct.occ** %2, align 8
  %14 = getelementptr inbounds %struct.occ, %struct.occ* %13, i32 0, i32 2
  store %struct.occ_sensors* %14, %struct.occ_sensors** %8, align 8
  %15 = load %struct.occ*, %struct.occ** %2, align 8
  %16 = getelementptr inbounds %struct.occ, %struct.occ* %15, i32 0, i32 1
  store %struct.occ_response* %16, %struct.occ_response** %9, align 8
  %17 = load %struct.occ_response*, %struct.occ_response** %9, align 8
  %18 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = bitcast i32* %20 to %struct.occ_poll_response*
  store %struct.occ_poll_response* %21, %struct.occ_poll_response** %10, align 8
  %22 = load %struct.occ_poll_response*, %struct.occ_poll_response** %10, align 8
  %23 = getelementptr inbounds %struct.occ_poll_response, %struct.occ_poll_response* %22, i32 0, i32 1
  store %struct.occ_poll_response_header* %23, %struct.occ_poll_response_header** %11, align 8
  %24 = load %struct.occ_poll_response*, %struct.occ_poll_response** %10, align 8
  %25 = getelementptr inbounds %struct.occ_poll_response, %struct.occ_poll_response* %24, i32 0, i32 0
  store %struct.occ_sensor_data_block* %25, %struct.occ_sensor_data_block** %12, align 8
  %26 = load %struct.occ*, %struct.occ** %2, align 8
  %27 = getelementptr inbounds %struct.occ, %struct.occ* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %30 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %168, %1
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %11, align 8
  %36 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %171

39:                                               ; preds = %33
  %40 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %41 = bitcast %struct.occ_sensor_data_block* %40 to i32*
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = bitcast i32* %44 to %struct.occ_sensor_data_block*
  store %struct.occ_sensor_data_block* %45, %struct.occ_sensor_data_block** %12, align 8
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %48 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %52 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 16
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, 8
  %65 = load i32, i32* @OCC_RESP_DATA_BYTES, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp uge i64 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %39
  %69 = load %struct.occ*, %struct.occ** %2, align 8
  %70 = getelementptr inbounds %struct.occ, %struct.occ* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @dev_warn(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %181

73:                                               ; preds = %39
  %74 = load %struct.occ*, %struct.occ** %2, align 8
  %75 = getelementptr inbounds %struct.occ, %struct.occ* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub i32 %78, 1
  %80 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %81 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %85 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %79, i32 %83, i32 %87)
  %89 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %90 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @strncmp(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %73
  %96 = load %struct.occ_sensors*, %struct.occ_sensors** %8, align 8
  %97 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %96, i32 0, i32 4
  store %struct.occ_sensor* %97, %struct.occ_sensor** %7, align 8
  br label %151

98:                                               ; preds = %73
  %99 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %100 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strncmp(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.occ_sensors*, %struct.occ_sensors** %8, align 8
  %107 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %106, i32 0, i32 3
  store %struct.occ_sensor* %107, %struct.occ_sensor** %7, align 8
  br label %150

108:                                              ; preds = %98
  %109 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %110 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @strncmp(i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.occ_sensors*, %struct.occ_sensors** %8, align 8
  %117 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %116, i32 0, i32 2
  store %struct.occ_sensor* %117, %struct.occ_sensor** %7, align 8
  br label %149

118:                                              ; preds = %108
  %119 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %120 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @strncmp(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.occ_sensors*, %struct.occ_sensors** %8, align 8
  %127 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %126, i32 0, i32 1
  store %struct.occ_sensor* %127, %struct.occ_sensor** %7, align 8
  br label %148

128:                                              ; preds = %118
  %129 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %130 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @strncmp(i32 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load %struct.occ_sensors*, %struct.occ_sensors** %8, align 8
  %137 = getelementptr inbounds %struct.occ_sensors, %struct.occ_sensors* %136, i32 0, i32 0
  store %struct.occ_sensor* %137, %struct.occ_sensor** %7, align 8
  br label %147

138:                                              ; preds = %128
  %139 = load %struct.occ*, %struct.occ** %2, align 8
  %140 = getelementptr inbounds %struct.occ, %struct.occ* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %143 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @dev_warn(i32 %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  br label %168

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %125
  br label %149

149:                                              ; preds = %148, %115
  br label %150

150:                                              ; preds = %149, %105
  br label %151

151:                                              ; preds = %150, %95
  %152 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %153 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.occ_sensor*, %struct.occ_sensor** %7, align 8
  %157 = getelementptr inbounds %struct.occ_sensor, %struct.occ_sensor* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %159 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.occ_sensor*, %struct.occ_sensor** %7, align 8
  %163 = getelementptr inbounds %struct.occ_sensor, %struct.occ_sensor* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.occ_sensor_data_block*, %struct.occ_sensor_data_block** %12, align 8
  %165 = getelementptr inbounds %struct.occ_sensor_data_block, %struct.occ_sensor_data_block* %164, i32 0, i32 0
  %166 = load %struct.occ_sensor*, %struct.occ_sensor** %7, align 8
  %167 = getelementptr inbounds %struct.occ_sensor, %struct.occ_sensor* %166, i32 0, i32 1
  store i32* %165, i32** %167, align 8
  br label %168

168:                                              ; preds = %151, %138
  %169 = load i32, i32* %3, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %33

171:                                              ; preds = %33
  %172 = load %struct.occ*, %struct.occ** %2, align 8
  %173 = getelementptr inbounds %struct.occ, %struct.occ* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = zext i32 %176 to i64
  %178 = add i64 %177, 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %175, i32 8, i32 %179)
  br label %181

181:                                              ; preds = %171, %68
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
