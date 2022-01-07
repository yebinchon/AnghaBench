; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, %struct.hiddev*, %struct.TYPE_3__*, %struct.usbhid_device* }
%struct.hiddev = type { i32, i32, i32, %struct.hid_device*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.usbhid_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HID_COLLECTION_APPLICATION = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@hiddev_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not able to get a minor for this device\0A\00", align 1
@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hiddev_connect(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hiddev*, align 8
  %7 = alloca %struct.usbhid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 4
  %12 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  store %struct.usbhid_device* %12, %struct.usbhid_device** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HID_COLLECTION_APPLICATION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %22
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @IS_INPUT_APPLICATION(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %49

45:                                               ; preds = %33, %22
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %16

49:                                               ; preds = %44, %16
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %52 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %111

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.hiddev* @kzalloc(i32 40, i32 %58)
  store %struct.hiddev* %59, %struct.hiddev** %6, align 8
  %60 = icmp ne %struct.hiddev* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %111

62:                                               ; preds = %57
  %63 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %64 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %63, i32 0, i32 7
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %67 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %66, i32 0, i32 6
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %70 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %69, i32 0, i32 5
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %73 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %72, i32 0, i32 4
  %74 = call i32 @mutex_init(i32* %73)
  %75 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %76 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %76, i32 0, i32 2
  store %struct.hiddev* %75, %struct.hiddev** %77, align 8
  %78 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %79 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %80 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %79, i32 0, i32 3
  store %struct.hid_device* %78, %struct.hid_device** %80, align 8
  %81 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %82 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %84 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @usb_register_dev(%struct.TYPE_4__* %85, i32* @hiddev_class)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %62
  %90 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %91 = call i32 @hid_err(%struct.hid_device* %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %93 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %92, i32 0, i32 2
  store %struct.hiddev* null, %struct.hiddev** %93, align 8
  %94 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %95 = call i32 @kfree(%struct.hiddev* %94)
  store i32 -1, i32* %3, align 4
  br label %111

96:                                               ; preds = %62
  %97 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %98 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %101 = and i32 %99, %100
  %102 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %103 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %105 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  %110 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %96, %89, %61, %55
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @IS_INPUT_APPLICATION(i32) #1

declare dso_local %struct.hiddev* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_register_dev(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @kfree(%struct.hiddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
