; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_probe_tpkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_probe_tpkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lenovo_drvdata_tpkbd = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.device*, i8*, i8* }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@lenovo_attr_group_tpkbd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not create sysfs group: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not allocate memory for driver data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not allocate memory for led data\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s:amber:mute\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s:amber:micmute\00", align 1
@lenovo_led_brightness_get_tpkbd = common dso_local global i8* null, align 8
@lenovo_led_brightness_set_tpkbd = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @lenovo_probe_tpkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_probe_tpkbd(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lenovo_drvdata_tpkbd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i8* @dev_name(%struct.device* %13)
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 16
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = call i32 @hid_get_drvdata(%struct.hid_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %171

22:                                               ; preds = %1
  %23 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %24 = call i32 @hid_set_drvdata(%struct.hid_device* %23, %struct.lenovo_drvdata_tpkbd* null)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %38, %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %30 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @hid_validate_values(%struct.hid_device* %29, i32 %30, i32 4, i32 %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %171

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %43 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %44 = call i32 @hid_validate_values(%struct.hid_device* %42, i32 %43, i32 3, i32 0, i32 2)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %171

49:                                               ; preds = %41
  %50 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = call i32 @sysfs_create_group(i32* %52, i32* @lenovo_attr_group_tpkbd)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @hid_warn(%struct.hid_device* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %62 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %61, i32 0, i32 0
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @devm_kzalloc(%struct.device* %62, i64 72, i32 %63)
  %65 = bitcast i8* %64 to %struct.lenovo_drvdata_tpkbd*
  store %struct.lenovo_drvdata_tpkbd* %65, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %66 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %67 = icmp eq %struct.lenovo_drvdata_tpkbd* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %70 = call i32 @hid_err(%struct.hid_device* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %165

73:                                               ; preds = %60
  %74 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %75 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %74, i32 0, i32 0
  store i32 160, i32* %75, align 8
  %76 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %77 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %76, i32 0, i32 1
  store i32 56, i32* %77, align 4
  %78 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %79 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %78, i32 0, i32 0
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @devm_kzalloc(%struct.device* %79, i64 %80, i32 %81)
  store i8* %82, i8** %7, align 8
  %83 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %84 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %83, i32 0, i32 0
  %85 = load i64, i64* %6, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @devm_kzalloc(%struct.device* %84, i64 %85, i32 %86)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %73
  %91 = load i8*, i8** %8, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %73
  %94 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %95 = call i32 @hid_err(%struct.hid_device* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %165

98:                                               ; preds = %90
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i8* @dev_name(%struct.device* %101)
  %103 = call i32 @snprintf(i8* %99, i64 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i8* @dev_name(%struct.device* %106)
  %108 = call i32 @snprintf(i8* %104, i64 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  %109 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %110 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %111 = call i32 @hid_set_drvdata(%struct.hid_device* %109, %struct.lenovo_drvdata_tpkbd* %110)
  %112 = load i8*, i8** %7, align 8
  %113 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %114 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @lenovo_led_brightness_get_tpkbd, align 8
  %117 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %118 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** @lenovo_led_brightness_set_tpkbd, align 8
  %121 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %122 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i8* %120, i8** %123, align 8
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %126 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store %struct.device* %124, %struct.device** %127, align 8
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %130 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %129, i32 0, i32 2
  %131 = call i32 @led_classdev_register(%struct.device* %128, %struct.TYPE_3__* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %98
  br label %165

135:                                              ; preds = %98
  %136 = load i8*, i8** %8, align 8
  %137 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %138 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  %140 = load i8*, i8** @lenovo_led_brightness_get_tpkbd, align 8
  %141 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %142 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i8* %140, i8** %143, align 8
  %144 = load i8*, i8** @lenovo_led_brightness_set_tpkbd, align 8
  %145 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %146 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %150 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store %struct.device* %148, %struct.device** %151, align 8
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %154 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %153, i32 0, i32 3
  %155 = call i32 @led_classdev_register(%struct.device* %152, %struct.TYPE_3__* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %135
  %159 = load %struct.lenovo_drvdata_tpkbd*, %struct.lenovo_drvdata_tpkbd** %5, align 8
  %160 = getelementptr inbounds %struct.lenovo_drvdata_tpkbd, %struct.lenovo_drvdata_tpkbd* %159, i32 0, i32 2
  %161 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %160)
  br label %165

162:                                              ; preds = %135
  %163 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %164 = call i32 @lenovo_features_set_tpkbd(%struct.hid_device* %163)
  store i32 0, i32* %2, align 4
  br label %171

165:                                              ; preds = %158, %134, %93, %68
  %166 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %167 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.device, %struct.device* %167, i32 0, i32 0
  %169 = call i32 @sysfs_remove_group(i32* %168, i32* @lenovo_attr_group_tpkbd)
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %162, %46, %34, %21
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.lenovo_drvdata_tpkbd*) #1

declare dso_local i32 @hid_validate_values(%struct.hid_device*, i32, i32, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i64, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @lenovo_features_set_tpkbd(%struct.hid_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
