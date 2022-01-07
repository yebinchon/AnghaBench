; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ati_remote2 = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ati_remote2_attr_group = common dso_local global i32 0, align 4
@ati_remote2_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ati_remote2_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ati_remote2_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ati_remote2*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  store %struct.usb_host_interface* %7, %struct.usb_host_interface** %4, align 8
  %8 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %9 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = call %struct.ati_remote2* @usb_get_intfdata(%struct.usb_interface* %15)
  store %struct.ati_remote2* %16, %struct.ati_remote2** %3, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, i32* null)
  %19 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %20 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @input_unregister_device(i32 %21)
  %23 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %24 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @sysfs_remove_group(i32* %27, i32* @ati_remote2_attr_group)
  %29 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %30 = call i32 @ati_remote2_urb_cleanup(%struct.ati_remote2* %29)
  %31 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %32 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_driver_release_interface(i32* @ati_remote2_driver, i32 %35)
  %37 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %38 = call i32 @kfree(%struct.ati_remote2* %37)
  br label %39

39:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.ati_remote2* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ati_remote2_urb_cleanup(%struct.ati_remote2*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ati_remote2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
