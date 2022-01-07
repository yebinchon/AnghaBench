; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_set_tcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_set_tcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device_attribute = type { i32 }
%struct.kone_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"couldn't set tcu state\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't read settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kone_sysfs_set_tcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_sysfs_set_tcu(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kone_device*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_get_drvdata(%struct.device* %19)
  %21 = call %struct.kone_device* @hid_get_drvdata(i32 %20)
  store %struct.kone_device* %21, %struct.kone_device** %10, align 8
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @to_usb_interface(%struct.device* %22)
  %24 = call %struct.usb_device* @interface_to_usbdev(i32 %23)
  store %struct.usb_device* %24, %struct.usb_device** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %139

31:                                               ; preds = %4
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %139

40:                                               ; preds = %34, %31
  %41 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %42 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %44, 1
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %48 = call i32 @kone_tcu_command(%struct.usb_device* %47, i32 1)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %134

52:                                               ; preds = %46
  %53 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %54 = call i32 @kone_tcu_command(%struct.usb_device* %53, i32 2)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %134

58:                                               ; preds = %52
  %59 = call i32 @ssleep(i32 5)
  %60 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %61 = call i32 @kone_tcu_command(%struct.usb_device* %60, i32 3)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %134

65:                                               ; preds = %58
  %66 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %67 = call i32 @kone_tcu_command(%struct.usb_device* %66, i32 0)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %134

71:                                               ; preds = %65
  %72 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %73 = call i32 @kone_tcu_command(%struct.usb_device* %72, i32 4)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %134

77:                                               ; preds = %71
  %78 = call i32 @ssleep(i32 1)
  br label %79

79:                                               ; preds = %77, %40
  %80 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %81 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %82 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %81, i32 0, i32 1
  %83 = call i32 @kone_get_settings(%struct.usb_device* %80, %struct.TYPE_6__* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %130

87:                                               ; preds = %79
  %88 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %89 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %87
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %97 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %100 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %99, i32 0, i32 1
  %101 = call i32 @kone_set_settings_checksum(%struct.TYPE_6__* %100)
  %102 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %103 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %104 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %103, i32 0, i32 1
  %105 = call i32 @kone_set_settings(%struct.usb_device* %102, %struct.TYPE_6__* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %94
  %109 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %110 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %109, i32 0, i32 0
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %112 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %113 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %114 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %113, i32 0, i32 1
  %115 = call i32 @kone_get_settings(%struct.usb_device* %112, %struct.TYPE_6__* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %130

119:                                              ; preds = %108
  br label %134

120:                                              ; preds = %94
  %121 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %122 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %123 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @kone_profile_activated(%struct.kone_device* %121, i32 %125)
  br label %127

127:                                              ; preds = %120, %87
  %128 = load i64, i64* %9, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %127, %118, %86
  %131 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %132 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %119, %76, %70, %64, %57, %51
  %135 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %136 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %134, %37, %29
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.kone_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kone_tcu_command(%struct.usb_device*, i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @kone_get_settings(%struct.usb_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @kone_set_settings_checksum(%struct.TYPE_6__*) #1

declare dso_local i32 @kone_set_settings(%struct.usb_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kone_profile_activated(%struct.kone_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
