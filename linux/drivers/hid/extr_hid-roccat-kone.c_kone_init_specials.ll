; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_init_specials.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_init_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.usb_device = type { i32 }
%struct.kone_device = type { i32, i32 }

@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"couldn't init struct kone_device\0A\00", align 1
@kone_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"couldn't init char dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @kone_init_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_init_specials(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.kone_device*, align 8
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
  br i1 %22, label %23, label %59

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.kone_device* @kzalloc(i32 8, i32 %24)
  store %struct.kone_device* %25, %struct.kone_device** %6, align 8
  %26 = load %struct.kone_device*, %struct.kone_device** %6, align 8
  %27 = icmp ne %struct.kone_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %33 = load %struct.kone_device*, %struct.kone_device** %6, align 8
  %34 = call i32 @hid_set_drvdata(%struct.hid_device* %32, %struct.kone_device* %33)
  %35 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %36 = load %struct.kone_device*, %struct.kone_device** %6, align 8
  %37 = call i32 @kone_init_kone_device_struct(%struct.usb_device* %35, %struct.kone_device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %42 = call i32 @hid_err(%struct.hid_device* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %63

43:                                               ; preds = %31
  %44 = load i32, i32* @kone_class, align 4
  %45 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %46 = call i32 @roccat_connect(i32 %44, %struct.hid_device* %45, i32 4)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %51 = call i32 @hid_err(%struct.hid_device* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.kone_device*, %struct.kone_device** %6, align 8
  %54 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.kone_device*, %struct.kone_device** %6, align 8
  %57 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %49
  br label %62

59:                                               ; preds = %1
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = call i32 @hid_set_drvdata(%struct.hid_device* %60, %struct.kone_device* null)
  br label %62

62:                                               ; preds = %59, %58
  store i32 0, i32* %2, align 4
  br label %67

63:                                               ; preds = %40
  %64 = load %struct.kone_device*, %struct.kone_device** %6, align 8
  %65 = call i32 @kfree(%struct.kone_device* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %62, %28
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.kone_device* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.kone_device*) #1

declare dso_local i32 @kone_init_kone_device_struct(%struct.usb_device*, %struct.kone_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @roccat_connect(i32, %struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.kone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
