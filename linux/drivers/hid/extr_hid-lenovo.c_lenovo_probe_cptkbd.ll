; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_probe_cptkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_probe_cptkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lenovo_drvdata_cptkbd = type { i32, i32, i64 }

@USB_DEVICE_ID_LENOVO_CUSBKBD = common dso_local global i64 0, align 8
@HID_TYPE_USBMOUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Ignoring keyboard half of device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't alloc keyboard descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to switch F7/9/11 mode: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to switch middle button: %d\0A\00", align 1
@lenovo_attr_group_cptkbd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not create sysfs group: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @lenovo_probe_cptkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_probe_cptkbd(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lenovo_drvdata_cptkbd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USB_DEVICE_ID_LENOVO_CUSBKBD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HID_TYPE_USBMOUSE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = call i32 @hid_dbg(%struct.hid_device* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

20:                                               ; preds = %11, %1
  %21 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.lenovo_drvdata_cptkbd* @devm_kzalloc(%struct.TYPE_2__* %22, i32 16, i32 %23)
  store %struct.lenovo_drvdata_cptkbd* %24, %struct.lenovo_drvdata_cptkbd** %5, align 8
  %25 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %5, align 8
  %26 = icmp eq %struct.lenovo_drvdata_cptkbd* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %73

32:                                               ; preds = %20
  %33 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %34 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %5, align 8
  %35 = call i32 @hid_set_drvdata(%struct.hid_device* %33, %struct.lenovo_drvdata_cptkbd* %34)
  %36 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %37 = call i32 @lenovo_send_cmd_cptkbd(%struct.hid_device* %36, i32 1, i32 3)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @hid_warn(%struct.hid_device* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %32
  %45 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %46 = call i32 @lenovo_send_cmd_cptkbd(%struct.hid_device* %45, i32 9, i32 1)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @hid_warn(%struct.hid_device* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %5, align 8
  %55 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %5, align 8
  %57 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %5, align 8
  %59 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %58, i32 0, i32 1
  store i32 5, i32* %59, align 4
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = call i32 @lenovo_features_set_cptkbd(%struct.hid_device* %60)
  %62 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %63 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_create_group(i32* %64, i32* @lenovo_attr_group_cptkbd)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @hid_warn(%struct.hid_device* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %53
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %27, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*) #1

declare dso_local %struct.lenovo_drvdata_cptkbd* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.lenovo_drvdata_cptkbd*) #1

declare dso_local i32 @lenovo_send_cmd_cptkbd(%struct.hid_device*, i32, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @lenovo_features_set_cptkbd(%struct.hid_device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
