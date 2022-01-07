; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-lua.c_lua_remove_specials.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-lua.c_lua_remove_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.lua_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @lua_remove_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_remove_specials(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.lua_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.usb_interface* @to_usb_interface(i32 %8)
  store %struct.usb_interface* %9, %struct.usb_interface** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = call i32 @lua_remove_sysfs_attributes(%struct.usb_interface* %10)
  %12 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %13 = call %struct.lua_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.lua_device* %13, %struct.lua_device** %4, align 8
  %14 = load %struct.lua_device*, %struct.lua_device** %4, align 8
  %15 = call i32 @kfree(%struct.lua_device* %14)
  ret void
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local i32 @lua_remove_sysfs_attributes(%struct.usb_interface*) #1

declare dso_local %struct.lua_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.lua_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
