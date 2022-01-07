; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hid_report** }
%struct.hid_report = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.ntrig_data = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64 }

@HID_QUIRK_MULTI_INPUT = common dso_local global i32 0, align 4
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot allocate N-Trig data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@activate_slack = common dso_local global i8* null, align 8
@deactivate_slack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@HID_FEATURE_REPORT = common dso_local global i64 0, align 8
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@ntrig_attribute_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot create sysfs group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @ntrig_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntrig_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntrig_data*, align 8
  %8 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %9 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @HID_QUIRK_MULTI_INPUT, align 4
  %15 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ntrig_data* @kmalloc(i32 56, i32 %22)
  store %struct.ntrig_data* %23, %struct.ntrig_data** %7, align 8
  %24 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %25 = icmp ne %struct.ntrig_data* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = call i32 @hid_err(%struct.hid_device* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %21
  %32 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %33 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %35 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %37 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** @activate_slack, align 8
  %39 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %40 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @activate_slack, align 8
  %42 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %43 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @deactivate_slack, align 4
  %45 = sub nsw i32 0, %44
  %46 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %47 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %49 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %51 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %53 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %52, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %55 = getelementptr inbounds %struct.ntrig_data, %struct.ntrig_data* %54, i32 0, i32 4
  store i32 1, i32* %55, align 8
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %58 = call i32 @hid_set_drvdata(%struct.hid_device* %56, %struct.ntrig_data* %57)
  %59 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %60 = call i32 @hid_parse(%struct.hid_device* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %31
  %64 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %65 = call i32 @hid_err(%struct.hid_device* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %117

66:                                               ; preds = %31
  %67 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %68 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %69 = load i32, i32* @HID_CONNECT_FF, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @hid_hw_start(%struct.hid_device* %67, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %77 = call i32 @hid_err(%struct.hid_device* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %117

78:                                               ; preds = %66
  %79 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %80 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load %struct.hid_report**, %struct.hid_report*** %84, align 8
  %86 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %85, i64 10
  %87 = load %struct.hid_report*, %struct.hid_report** %86, align 8
  store %struct.hid_report* %87, %struct.hid_report** %8, align 8
  %88 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %89 = icmp ne %struct.hid_report* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %78
  %91 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %92 = call i32 @hid_hw_wait(%struct.hid_device* %91)
  %93 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %94 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %95 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %96 = call i32 @hid_hw_request(%struct.hid_device* %93, %struct.hid_report* %94, i32 %95)
  %97 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %98 = call i32 @ntrig_get_mode(%struct.hid_device* %97)
  %99 = icmp sge i32 %98, 4
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %102 = call i32 @ntrig_set_mode(%struct.hid_device* %101, i32 3)
  br label %103

103:                                              ; preds = %100, %90
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %106 = call i32 @ntrig_report_version(%struct.hid_device* %105)
  %107 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %108 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @sysfs_create_group(i32* %109, i32* @ntrig_attribute_group)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %115 = call i32 @hid_err(%struct.hid_device* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %104
  store i32 0, i32* %3, align 4
  br label %121

117:                                              ; preds = %75, %63
  %118 = load %struct.ntrig_data*, %struct.ntrig_data** %7, align 8
  %119 = call i32 @kfree(%struct.ntrig_data* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %116, %26
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.ntrig_data* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.ntrig_data*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_hw_wait(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

declare dso_local i32 @ntrig_get_mode(%struct.hid_device*) #1

declare dso_local i32 @ntrig_set_mode(%struct.hid_device*, i32) #1

declare dso_local i32 @ntrig_report_version(%struct.hid_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ntrig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
