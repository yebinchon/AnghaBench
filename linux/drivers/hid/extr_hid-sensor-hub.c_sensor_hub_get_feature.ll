; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_get_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_get_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_report = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.sensor_hub_data = type { i32 }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sensor_hub_get_feature(%struct.hid_sensor_hub_device* %0, i64 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.hid_sensor_hub_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hid_report*, align 8
  %12 = alloca %struct.sensor_hub_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %18 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %19 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sensor_hub_data* @hid_get_drvdata(i32 %20)
  store %struct.sensor_hub_data* %21, %struct.sensor_hub_data** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %12, align 8
  %26 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %30 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %33 = call %struct.hid_report* @sensor_hub_report(i64 %28, i32 %31, i32 %32)
  store %struct.hid_report* %33, %struct.hid_report** %11, align 8
  %34 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %35 = icmp ne %struct.hid_report* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %5
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %39 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %44 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %42, %36, %5
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %152

55:                                               ; preds = %42
  %56 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %57 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %60 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %61 = call i32 @hid_hw_request(i32 %58, %struct.hid_report* %59, i32 %60)
  %62 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %6, align 8
  %63 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hid_hw_wait(i32 %64)
  %66 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %67 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DIV_ROUND_UP(i32 %73, i32 8)
  %75 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %76 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %74, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %55
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  br label %152

89:                                               ; preds = %55
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @min(i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %94 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %15, align 8
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %148, %89
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %105 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 %107
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %103, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %102
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %151

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32*, i32** %15, align 8
  %125 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %126 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 %128
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %132, 8
  %134 = call i32 @memcpy(i32* %123, i32* %124, i32 %133)
  %135 = load i32*, i32** %15, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  store i32* %136, i32** %15, align 8
  %137 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %138 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %139, i64 %140
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, 8
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %118
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %102

151:                                              ; preds = %117, %102
  br label %152

152:                                              ; preds = %151, %86, %52
  %153 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %12, align 8
  %154 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load i32, i32* %14, align 4
  ret i32 %156
}

declare dso_local %struct.sensor_hub_data* @hid_get_drvdata(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hid_report* @sensor_hub_report(i64, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @hid_hw_wait(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
