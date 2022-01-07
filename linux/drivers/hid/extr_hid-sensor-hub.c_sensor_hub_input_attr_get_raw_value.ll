; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_input_attr_get_raw_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_input_attr_get_raw_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i8*, i8* }
%struct.sensor_hub_data = type { i32, i32 }
%struct.hid_report = type { i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sensor_hub_input_attr_get_raw_value(%struct.hid_sensor_hub_device* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_sensor_hub_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sensor_hub_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hid_report*, align 8
  %17 = alloca i32, align 4
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %19 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.sensor_hub_data* @hid_get_drvdata(i32 %20)
  store %struct.sensor_hub_data* %21, %struct.sensor_hub_data** %14, align 8
  store i32 0, i32* %17, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %24 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HID_INPUT_REPORT, align 4
  %27 = call %struct.hid_report* @sensor_hub_report(i8* %22, i32 %25, i32 %26)
  store %struct.hid_report* %27, %struct.hid_report** %16, align 8
  %28 = load %struct.hid_report*, %struct.hid_report** %16, align 8
  %29 = icmp ne %struct.hid_report* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %158

33:                                               ; preds = %6
  %34 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %35 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %33
  %42 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %43 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %42, i32 0, i32 1
  %44 = call i32 @memset(%struct.TYPE_2__* %43, i32 0, i32 40)
  %45 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %46 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = call i32 @init_completion(i32* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %51 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %55 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  store i8* %53, i8** %56, align 8
  %57 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %58 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %14, align 8
  %61 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %60, i32 0, i32 1
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %65 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %14, align 8
  %68 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %67, i32 0, i32 1
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %41, %33
  %72 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %14, align 8
  %73 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %76 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hid_report*, %struct.hid_report** %16, align 8
  %79 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %80 = call i32 @hid_hw_request(i32 %77, %struct.hid_report* %78, i32 %79)
  %81 = load %struct.sensor_hub_data*, %struct.sensor_hub_data** %14, align 8
  %82 = getelementptr inbounds %struct.sensor_hub_data, %struct.sensor_hub_data* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %152

87:                                               ; preds = %71
  %88 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %89 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* @HZ, align 4
  %92 = mul nsw i32 %91, 5
  %93 = call i32 @wait_for_completion_interruptible_timeout(i32* %90, i32 %92)
  %94 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %95 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %142 [
    i32 1, label %98
    i32 2, label %116
    i32 4, label %134
  ]

98:                                               ; preds = %87
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %103 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %17, align 4
  br label %115

108:                                              ; preds = %98
  %109 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %110 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %108, %101
  br label %143

116:                                              ; preds = %87
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %121 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %17, align 4
  br label %133

126:                                              ; preds = %116
  %127 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %128 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %126, %119
  br label %143

134:                                              ; preds = %87
  %135 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %136 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8**
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %17, align 4
  br label %143

142:                                              ; preds = %87
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %142, %134, %133, %115
  %144 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %145 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @kfree(i64 %147)
  %149 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %150 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %143, %71
  %153 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %8, align 8
  %154 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %152, %30
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local %struct.sensor_hub_data* @hid_get_drvdata(i32) #1

declare dso_local %struct.hid_report* @sensor_hub_report(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
