; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.sony_sc = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@DUALSHOCK4_CONTROLLER_BT = common dso_local global i32 0, align 4
@dev_attr_bt_poll_interval = common dso_local global i32 0, align 4
@dev_attr_firmware_version = common dso_local global i32 0, align 4
@dev_attr_hardware_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @sony_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.sony_sc*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.sony_sc* %5, %struct.sony_sc** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = call i32 @hid_hw_close(%struct.hid_device* %6)
  %8 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %9 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DUALSHOCK4_CONTROLLER_BT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %16 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @device_remove_file(i32* %18, i32* @dev_attr_bt_poll_interval)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %22 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %27 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @device_remove_file(i32* %29, i32* @dev_attr_firmware_version)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %33 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %38 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @device_remove_file(i32* %40, i32* @dev_attr_hardware_version)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %44 = call i32 @sony_cancel_work_sync(%struct.sony_sc* %43)
  %45 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %46 = call i32 @sony_remove_dev_list(%struct.sony_sc* %45)
  %47 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %48 = call i32 @sony_release_device_id(%struct.sony_sc* %47)
  %49 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %50 = call i32 @hid_hw_stop(%struct.hid_device* %49)
  ret void
}

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @sony_cancel_work_sync(%struct.sony_sc*) #1

declare dso_local i32 @sony_remove_dev_list(%struct.sony_sc*) #1

declare dso_local i32 @sony_release_device_id(%struct.sony_sc*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
