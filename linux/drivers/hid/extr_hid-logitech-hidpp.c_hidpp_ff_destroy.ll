; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_device = type { %struct.hidpp_ff_private_data* }
%struct.hidpp_ff_private_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hid_device* }
%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unloading HID++ force feedback.\0A\00", align 1
@dev_attr_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_device*)* @hidpp_ff_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_ff_destroy(%struct.ff_device* %0) #0 {
  %2 = alloca %struct.ff_device*, align 8
  %3 = alloca %struct.hidpp_ff_private_data*, align 8
  %4 = alloca %struct.hid_device*, align 8
  store %struct.ff_device* %0, %struct.ff_device** %2, align 8
  %5 = load %struct.ff_device*, %struct.ff_device** %2, align 8
  %6 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %5, i32 0, i32 0
  %7 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %6, align 8
  store %struct.hidpp_ff_private_data* %7, %struct.hidpp_ff_private_data** %3, align 8
  %8 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %3, align 8
  %9 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  store %struct.hid_device* %12, %struct.hid_device** %4, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = call i32 @hid_info(%struct.hid_device* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(i32* %16, i32* @dev_attr_range)
  %18 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %3, align 8
  %19 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @destroy_workqueue(i32 %20)
  %22 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %3, align 8
  %23 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kfree(i32 %24)
  ret void
}

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
