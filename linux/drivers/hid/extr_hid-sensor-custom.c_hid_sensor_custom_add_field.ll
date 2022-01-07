; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_add_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_add_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_custom = type { i32, i32, i32, %struct.TYPE_4__*, %struct.hid_sensor_custom_field* }
%struct.TYPE_4__ = type { i32 }
%struct.hid_sensor_custom_field = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hid_report = type { i32 }
%struct.hid_field = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"feature-%x-%x\00", align 1
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"input-%x-%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_custom*, i32, i32, %struct.hid_report*, %struct.hid_field*)* @hid_sensor_custom_add_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_custom_add_field(%struct.hid_sensor_custom* %0, i32 %1, i32 %2, %struct.hid_report* %3, %struct.hid_field* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_sensor_custom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_report*, align 8
  %11 = alloca %struct.hid_field*, align 8
  %12 = alloca %struct.hid_sensor_custom_field*, align 8
  %13 = alloca i8*, align 8
  store %struct.hid_sensor_custom* %0, %struct.hid_sensor_custom** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.hid_report* %3, %struct.hid_report** %10, align 8
  store %struct.hid_field* %4, %struct.hid_field** %11, align 8
  %14 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %15 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %14, i32 0, i32 4
  %16 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %15, align 8
  %17 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %18 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 44
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @krealloc(%struct.hid_sensor_custom_field* %16, i32 %23, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %5
  %29 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %30 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %29, i32 0, i32 4
  %31 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %30, align 8
  %32 = call i32 @kfree(%struct.hid_sensor_custom_field* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %177

35:                                               ; preds = %5
  %36 = load i8*, i8** %13, align 8
  %37 = bitcast i8* %36 to %struct.hid_sensor_custom_field*
  %38 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %39 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %38, i32 0, i32 4
  store %struct.hid_sensor_custom_field* %37, %struct.hid_sensor_custom_field** %39, align 8
  %40 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %41 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %40, i32 0, i32 4
  %42 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %41, align 8
  %43 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %44 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %42, i64 %46
  store %struct.hid_sensor_custom_field* %47, %struct.hid_sensor_custom_field** %12, align 8
  %48 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %49 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %54 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 8
  store i32 %52, i32* %55, align 4
  %56 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %57 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %35
  %61 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %62 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %65 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %77

67:                                               ; preds = %35
  %68 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %69 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %68, i32 0, i32 7
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %75 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %60
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %80 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %83 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %86 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 7
  store i32 %84, i32* %87, align 4
  %88 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %89 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %92 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  store i32 %90, i32* %93, align 4
  %94 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %95 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %98 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 4
  %100 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %101 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 8
  %104 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %105 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %108 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %111 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 4
  %113 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %114 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %117 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %77
  %123 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %124 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %127 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %131 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @snprintf(i32 %125, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %133)
  br label %169

135:                                              ; preds = %77
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @HID_INPUT_REPORT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %135
  %140 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %141 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %144 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %148 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @snprintf(i32 %142, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %150)
  %152 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %153 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %157 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %160 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %158, %161
  %163 = sdiv i32 %162, 8
  %164 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %165 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %139, %135
  br label %169

169:                                              ; preds = %168, %122
  %170 = load %struct.hid_sensor_custom_field*, %struct.hid_sensor_custom_field** %12, align 8
  %171 = getelementptr inbounds %struct.hid_sensor_custom_field, %struct.hid_sensor_custom_field* %170, i32 0, i32 0
  %172 = call i32 @memset(i32* %171, i32 0, i32 4)
  %173 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %7, align 8
  %174 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %169, %28
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i8* @krealloc(%struct.hid_sensor_custom_field*, i32, i32) #1

declare dso_local i32 @kfree(%struct.hid_sensor_custom_field*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
