; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_hid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_hid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i32 }
%struct.wiimote_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't alloc device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"HID parse failed\0A\00", align 1
@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"HW start failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot start hardware I/O\0A\00", align 1
@dev_attr_extension = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot create sysfs attribute\0A\00", align 1
@dev_attr_devtype = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"New device registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @wiimote_hid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimote_hid_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.wiimote_data*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = call %struct.wiimote_data* @wiimote_create(%struct.hid_device* %13)
  store %struct.wiimote_data* %14, %struct.wiimote_data** %6, align 8
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %16 = icmp ne %struct.wiimote_data* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = call i32 @hid_err(%struct.hid_device* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = call i32 @hid_parse(%struct.hid_device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %92

30:                                               ; preds = %22
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  %33 = call i32 @hid_hw_start(%struct.hid_device* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = call i32 @hid_err(%struct.hid_device* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %92

39:                                               ; preds = %30
  %40 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %41 = call i32 @hid_hw_open(%struct.hid_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = call i32 @hid_err(%struct.hid_device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %89

47:                                               ; preds = %39
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 0
  %50 = call i32 @device_create_file(i32* %49, i32* @dev_attr_extension)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %55 = call i32 @hid_err(%struct.hid_device* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %86

56:                                               ; preds = %47
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 0
  %59 = call i32 @device_create_file(i32* %58, i32* @dev_attr_devtype)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = call i32 @hid_err(%struct.hid_device* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %80

65:                                               ; preds = %56
  %66 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %67 = call i32 @wiidebug_init(%struct.wiimote_data* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %76

71:                                               ; preds = %65
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = call i32 @hid_info(%struct.hid_device* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %75 = call i32 @wiimote_schedule(%struct.wiimote_data* %74)
  store i32 0, i32* %3, align 4
  br label %104

76:                                               ; preds = %70
  %77 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %78 = call i32 @wiimote_destroy(%struct.wiimote_data* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %104

80:                                               ; preds = %62
  %81 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %82 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @device_remove_file(i32* %84, i32* @dev_attr_extension)
  br label %86

86:                                               ; preds = %80, %53
  %87 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %88 = call i32 @hid_hw_close(%struct.hid_device* %87)
  br label %89

89:                                               ; preds = %86, %44
  %90 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %91 = call i32 @hid_hw_stop(%struct.hid_device* %90)
  br label %92

92:                                               ; preds = %89, %36, %27
  %93 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %94 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @input_free_device(i32 %95)
  %97 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %98 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @input_free_device(i32 %99)
  %101 = load %struct.wiimote_data*, %struct.wiimote_data** %6, align 8
  %102 = call i32 @kfree(%struct.wiimote_data* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %92, %76, %71, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.wiimote_data* @wiimote_create(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @wiidebug_init(%struct.wiimote_data*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @wiimote_schedule(%struct.wiimote_data*) #1

declare dso_local i32 @wiimote_destroy(%struct.wiimote_data*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @input_free_device(i32) #1

declare dso_local i32 @kfree(%struct.wiimote_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
