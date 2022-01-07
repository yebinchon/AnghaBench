; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.wacom = type { i32, i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.usb_device*, %struct.wacom_wac, %struct.hid_device* }
%struct.wacom_wac = type { i32, %struct.TYPE_4__, i32, %struct.wacom_features }
%struct.TYPE_4__ = type { i32 }
%struct.wacom_features = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WACOM_PKGLEN_MAX = common dso_local global i32 0, align 4
@wacom_init_work = common dso_local global i32 0, align 4
@wacom_wireless_work = common dso_local global i32 0, align 4
@wacom_battery_work = common dso_local global i32 0, align 4
@wacom_remote_work = common dso_local global i32 0, align 4
@wacom_mode_change_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@BUS_BLUETOOTH = common dso_local global i64 0, align 8
@dev_attr_speed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"can't create sysfs speed attribute err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @wacom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.wacom*, align 8
  %9 = alloca %struct.wacom_wac*, align 8
  %10 = alloca %struct.wacom_features*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.usb_interface* @to_usb_interface(i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %159

26:                                               ; preds = %2
  %27 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 2
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.wacom* @devm_kzalloc(%struct.TYPE_5__* %39, i32 80, i32 %40)
  store %struct.wacom* %41, %struct.wacom** %8, align 8
  %42 = load %struct.wacom*, %struct.wacom** %8, align 8
  %43 = icmp ne %struct.wacom* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %159

47:                                               ; preds = %26
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = load %struct.wacom*, %struct.wacom** %8, align 8
  %50 = call i32 @hid_set_drvdata(%struct.hid_device* %48, %struct.wacom* %49)
  %51 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %52 = load %struct.wacom*, %struct.wacom** %8, align 8
  %53 = getelementptr inbounds %struct.wacom, %struct.wacom* %52, i32 0, i32 9
  store %struct.hid_device* %51, %struct.hid_device** %53, align 8
  %54 = load %struct.wacom*, %struct.wacom** %8, align 8
  %55 = getelementptr inbounds %struct.wacom, %struct.wacom* %54, i32 0, i32 8
  store %struct.wacom_wac* %55, %struct.wacom_wac** %9, align 8
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 3
  %58 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %59 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.wacom_features*
  %62 = bitcast %struct.wacom_features* %57 to i8*
  %63 = bitcast %struct.wacom_features* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %65 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %64, i32 0, i32 3
  store %struct.wacom_features* %65, %struct.wacom_features** %10, align 8
  %66 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %67 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %47
  %71 = load %struct.wacom_features*, %struct.wacom_features** %10, align 8
  %72 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %75 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %159

81:                                               ; preds = %70, %47
  %82 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %83 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %82, i32 0, i32 2
  %84 = load i32, i32* @WACOM_PKGLEN_MAX, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @kfifo_alloc(i32* %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %159

91:                                               ; preds = %81
  %92 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %93 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 -1, i32* %94, align 4
  %95 = load %struct.wacom_wac*, %struct.wacom_wac** %9, align 8
  %96 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %98 = load %struct.wacom*, %struct.wacom** %8, align 8
  %99 = getelementptr inbounds %struct.wacom, %struct.wacom* %98, i32 0, i32 7
  store %struct.usb_device* %97, %struct.usb_device** %99, align 8
  %100 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %101 = load %struct.wacom*, %struct.wacom** %8, align 8
  %102 = getelementptr inbounds %struct.wacom, %struct.wacom* %101, i32 0, i32 6
  store %struct.usb_interface* %100, %struct.usb_interface** %102, align 8
  %103 = load %struct.wacom*, %struct.wacom** %8, align 8
  %104 = getelementptr inbounds %struct.wacom, %struct.wacom* %103, i32 0, i32 5
  %105 = call i32 @mutex_init(i32* %104)
  %106 = load %struct.wacom*, %struct.wacom** %8, align 8
  %107 = getelementptr inbounds %struct.wacom, %struct.wacom* %106, i32 0, i32 4
  %108 = load i32, i32* @wacom_init_work, align 4
  %109 = call i32 @INIT_DELAYED_WORK(i32* %107, i32 %108)
  %110 = load %struct.wacom*, %struct.wacom** %8, align 8
  %111 = getelementptr inbounds %struct.wacom, %struct.wacom* %110, i32 0, i32 3
  %112 = load i32, i32* @wacom_wireless_work, align 4
  %113 = call i32 @INIT_WORK(i32* %111, i32 %112)
  %114 = load %struct.wacom*, %struct.wacom** %8, align 8
  %115 = getelementptr inbounds %struct.wacom, %struct.wacom* %114, i32 0, i32 2
  %116 = load i32, i32* @wacom_battery_work, align 4
  %117 = call i32 @INIT_WORK(i32* %115, i32 %116)
  %118 = load %struct.wacom*, %struct.wacom** %8, align 8
  %119 = getelementptr inbounds %struct.wacom, %struct.wacom* %118, i32 0, i32 1
  %120 = load i32, i32* @wacom_remote_work, align 4
  %121 = call i32 @INIT_WORK(i32* %119, i32 %120)
  %122 = load %struct.wacom*, %struct.wacom** %8, align 8
  %123 = getelementptr inbounds %struct.wacom, %struct.wacom* %122, i32 0, i32 0
  %124 = load i32, i32* @wacom_mode_change_work, align 4
  %125 = call i32 @INIT_WORK(i32* %123, i32 %124)
  %126 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %127 = call i32 @hid_parse(%struct.hid_device* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %91
  %131 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %132 = call i32 @hid_err(%struct.hid_device* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %159

134:                                              ; preds = %91
  %135 = load %struct.wacom*, %struct.wacom** %8, align 8
  %136 = call i32 @wacom_parse_and_register(%struct.wacom* %135, i32 0)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %3, align 4
  br label %159

141:                                              ; preds = %134
  %142 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %143 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @BUS_BLUETOOTH, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %149 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %148, i32 0, i32 2
  %150 = call i32 @device_create_file(%struct.TYPE_5__* %149, i32* @dev_attr_speed)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @hid_warn(%struct.hid_device* %154, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %157, %141
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %139, %130, %89, %78, %44, %23
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.wacom* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.wacom*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @wacom_parse_and_register(%struct.wacom*, i32) #1

declare dso_local i32 @device_create_file(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
