; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_init_specials.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_init_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.usb_device = type { i32 }
%struct.pyra_device = type { i32, i32 }

@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc device descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't init struct pyra_device\0A\00", align 1
@pyra_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't init char dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @pyra_init_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyra_init_specials(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.pyra_device*, align 8
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
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.pyra_device* @kzalloc(i32 8, i32 %24)
  store %struct.pyra_device* %25, %struct.pyra_device** %6, align 8
  %26 = load %struct.pyra_device*, %struct.pyra_device** %6, align 8
  %27 = icmp ne %struct.pyra_device* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %30 = call i32 @hid_err(%struct.hid_device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %23
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = load %struct.pyra_device*, %struct.pyra_device** %6, align 8
  %36 = call i32 @hid_set_drvdata(%struct.hid_device* %34, %struct.pyra_device* %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %38 = load %struct.pyra_device*, %struct.pyra_device** %6, align 8
  %39 = call i32 @pyra_init_pyra_device_struct(%struct.usb_device* %37, %struct.pyra_device* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %44 = call i32 @hid_err(%struct.hid_device* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %65

45:                                               ; preds = %33
  %46 = load i32, i32* @pyra_class, align 4
  %47 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %48 = call i32 @roccat_connect(i32 %46, %struct.hid_device* %47, i32 4)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %53 = call i32 @hid_err(%struct.hid_device* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.pyra_device*, %struct.pyra_device** %6, align 8
  %57 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pyra_device*, %struct.pyra_device** %6, align 8
  %59 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %51
  br label %64

61:                                               ; preds = %1
  %62 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %63 = call i32 @hid_set_drvdata(%struct.hid_device* %62, %struct.pyra_device* null)
  br label %64

64:                                               ; preds = %61, %60
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %42
  %66 = load %struct.pyra_device*, %struct.pyra_device** %6, align 8
  %67 = call i32 @kfree(%struct.pyra_device* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %64, %28
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.pyra_device* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.pyra_device*) #1

declare dso_local i32 @pyra_init_pyra_device_struct(%struct.usb_device*, %struct.pyra_device*) #1

declare dso_local i32 @roccat_connect(i32, %struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.pyra_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
