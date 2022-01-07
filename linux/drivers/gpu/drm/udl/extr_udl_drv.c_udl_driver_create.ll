; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_drv.c_udl_driver_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_drv.c_udl_driver_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_device = type { %struct.TYPE_3__, %struct.usb_device* }
%struct.TYPE_3__ = type { %struct.udl_device* }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udl_device* (%struct.usb_interface*)* @udl_driver_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udl_device* @udl_driver_create(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.udl_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.udl_device*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.udl_device* @kzalloc(i32 16, i32 %9)
  store %struct.udl_device* %10, %struct.udl_device** %5, align 8
  %11 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %12 = icmp ne %struct.udl_device* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.udl_device* @ERR_PTR(i32 %15)
  store %struct.udl_device* %16, %struct.udl_device** %2, align 8
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %19 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %18, i32 0, i32 0
  %20 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = call i32 @drm_dev_init(%struct.TYPE_3__* %19, i32* @driver, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %27 = call i32 @kfree(%struct.udl_device* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.udl_device* @ERR_PTR(i32 %28)
  store %struct.udl_device* %29, %struct.udl_device** %2, align 8
  br label %55

30:                                               ; preds = %17
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %33 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %32, i32 0, i32 1
  store %struct.usb_device* %31, %struct.usb_device** %33, align 8
  %34 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %35 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %36 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store %struct.udl_device* %34, %struct.udl_device** %37, align 8
  %38 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %39 = call i32 @udl_init(%struct.udl_device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %44 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %43, i32 0, i32 0
  %45 = call i32 @drm_dev_fini(%struct.TYPE_3__* %44)
  %46 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %47 = call i32 @kfree(%struct.udl_device* %46)
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.udl_device* @ERR_PTR(i32 %48)
  store %struct.udl_device* %49, %struct.udl_device** %2, align 8
  br label %55

50:                                               ; preds = %30
  %51 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %52 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  %53 = call i32 @usb_set_intfdata(%struct.usb_interface* %51, %struct.udl_device* %52)
  %54 = load %struct.udl_device*, %struct.udl_device** %5, align 8
  store %struct.udl_device* %54, %struct.udl_device** %2, align 8
  br label %55

55:                                               ; preds = %50, %42, %25, %13
  %56 = load %struct.udl_device*, %struct.udl_device** %2, align 8
  ret %struct.udl_device* %56
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.udl_device* @kzalloc(i32, i32) #1

declare dso_local %struct.udl_device* @ERR_PTR(i32) #1

declare dso_local i32 @drm_dev_init(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.udl_device*) #1

declare dso_local i32 @udl_init(%struct.udl_device*) #1

declare dso_local i32 @drm_dev_fini(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.udl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
