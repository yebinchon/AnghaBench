; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-konepure.c_konepure_init_specials.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-konepure.c_konepure_init_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.usb_device = type { i32 }
%struct.roccat_common2_device = type { i32, i32 }

@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc device descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't init KonePure device\0A\00", align 1
@konepure_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't init char dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @konepure_init_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @konepure_init_specials(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.roccat_common2_device*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_interface* @to_usb_interface(i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %4, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_INTERFACE_PROTOCOL_MOUSE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %25 = call i32 @hid_set_drvdata(%struct.hid_device* %24, %struct.roccat_common2_device* null)
  store i32 0, i32* %2, align 4
  br label %68

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.roccat_common2_device* @kzalloc(i32 8, i32 %27)
  store %struct.roccat_common2_device* %28, %struct.roccat_common2_device** %6, align 8
  %29 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %6, align 8
  %30 = icmp ne %struct.roccat_common2_device* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %33 = call i32 @hid_err(%struct.hid_device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %26
  %37 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %38 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %6, align 8
  %39 = call i32 @hid_set_drvdata(%struct.hid_device* %37, %struct.roccat_common2_device* %38)
  %40 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %41 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %6, align 8
  %42 = call i32 @roccat_common2_device_init_struct(%struct.usb_device* %40, %struct.roccat_common2_device* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %47 = call i32 @hid_err(%struct.hid_device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %64

48:                                               ; preds = %36
  %49 = load i32, i32* @konepure_class, align 4
  %50 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %51 = call i32 @roccat_connect(i32 %49, %struct.hid_device* %50, i32 4)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %56 = call i32 @hid_err(%struct.hid_device* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %63

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %6, align 8
  %60 = getelementptr inbounds %struct.roccat_common2_device, %struct.roccat_common2_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %6, align 8
  %62 = getelementptr inbounds %struct.roccat_common2_device, %struct.roccat_common2_device* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  store i32 0, i32* %2, align 4
  br label %68

64:                                               ; preds = %45
  %65 = load %struct.roccat_common2_device*, %struct.roccat_common2_device** %6, align 8
  %66 = call i32 @kfree(%struct.roccat_common2_device* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %63, %31, %23
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.roccat_common2_device*) #1

declare dso_local %struct.roccat_common2_device* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @roccat_common2_device_init_struct(%struct.usb_device*, %struct.roccat_common2_device*) #1

declare dso_local i32 @roccat_connect(i32, %struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.roccat_common2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
