; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i32 }
%struct.wacom = type { %struct.wacom_wac, i32, i32, i32, i32, i32 }
%struct.wacom_wac = type { i32, %struct.wacom_features }
%struct.wacom_features = type { i32, i64 }

@WACOM_DEVICETYPE_WL_MONITOR = common dso_local global i32 0, align 4
@BUS_BLUETOOTH = common dso_local global i64 0, align 8
@dev_attr_speed = common dso_local global i32 0, align 4
@REMOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @wacom_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca %struct.wacom_features*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %6)
  store %struct.wacom* %7, %struct.wacom** %3, align 8
  %8 = load %struct.wacom*, %struct.wacom** %3, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 0
  store %struct.wacom_wac* %9, %struct.wacom_wac** %4, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 1
  store %struct.wacom_features* %11, %struct.wacom_features** %5, align 8
  %12 = load %struct.wacom_features*, %struct.wacom_features** %5, align 8
  %13 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @WACOM_DEVICETYPE_WL_MONITOR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %20 = call i32 @hid_hw_close(%struct.hid_device* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %23 = call i32 @hid_hw_stop(%struct.hid_device* %22)
  %24 = load %struct.wacom*, %struct.wacom** %3, align 8
  %25 = getelementptr inbounds %struct.wacom, %struct.wacom* %24, i32 0, i32 5
  %26 = call i32 @cancel_delayed_work_sync(i32* %25)
  %27 = load %struct.wacom*, %struct.wacom** %3, align 8
  %28 = getelementptr inbounds %struct.wacom, %struct.wacom* %27, i32 0, i32 4
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.wacom*, %struct.wacom** %3, align 8
  %31 = getelementptr inbounds %struct.wacom, %struct.wacom* %30, i32 0, i32 3
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.wacom*, %struct.wacom** %3, align 8
  %34 = getelementptr inbounds %struct.wacom, %struct.wacom* %33, i32 0, i32 2
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load %struct.wacom*, %struct.wacom** %3, align 8
  %37 = getelementptr inbounds %struct.wacom, %struct.wacom* %36, i32 0, i32 1
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BUS_BLUETOOTH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %21
  %45 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 1
  %47 = call i32 @device_remove_file(i32* %46, i32* @dev_attr_speed)
  br label %48

48:                                               ; preds = %44, %21
  %49 = load %struct.wacom*, %struct.wacom** %3, align 8
  %50 = call i32 @wacom_led_groups_release(%struct.wacom* %49)
  %51 = load %struct.wacom*, %struct.wacom** %3, align 8
  %52 = getelementptr inbounds %struct.wacom, %struct.wacom* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REMOTE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.wacom*, %struct.wacom** %3, align 8
  %60 = call i32 @wacom_release_resources(%struct.wacom* %59)
  br label %61

61:                                               ; preds = %58, %48
  %62 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %63 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %62, i32 0, i32 0
  %64 = call i32 @kfifo_free(i32* %63)
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @wacom_led_groups_release(%struct.wacom*) #1

declare dso_local i32 @wacom_release_resources(%struct.wacom*) #1

declare dso_local i32 @kfifo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
