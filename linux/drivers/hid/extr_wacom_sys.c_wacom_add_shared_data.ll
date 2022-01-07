; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_add_shared_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_add_shared_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.hid_device*, %struct.hid_device* }
%struct.TYPE_3__ = type { i32 }
%struct.wacom_hdev_data = type { %struct.TYPE_4__, i32, %struct.hid_device*, i32 }

@wacom_udev_list_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wacom_udev_list = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @wacom_add_shared_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_add_shared_data(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca %struct.wacom_wac*, align 8
  %6 = alloca %struct.wacom_hdev_data*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.wacom* %9, %struct.wacom** %4, align 8
  %10 = load %struct.wacom*, %struct.wacom** %4, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 0
  store %struct.wacom_wac* %11, %struct.wacom_wac** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 @mutex_lock(i32* @wacom_udev_list_lock)
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = call %struct.wacom_hdev_data* @wacom_get_hdev_data(%struct.hid_device* %13)
  store %struct.wacom_hdev_data* %14, %struct.wacom_hdev_data** %6, align 8
  %15 = load %struct.wacom_hdev_data*, %struct.wacom_hdev_data** %6, align 8
  %16 = icmp ne %struct.wacom_hdev_data* %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.wacom_hdev_data* @kzalloc(i32 40, i32 %18)
  store %struct.wacom_hdev_data* %19, %struct.wacom_hdev_data** %6, align 8
  %20 = load %struct.wacom_hdev_data*, %struct.wacom_hdev_data** %6, align 8
  %21 = icmp ne %struct.wacom_hdev_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %81

25:                                               ; preds = %17
  %26 = load %struct.wacom_hdev_data*, %struct.wacom_hdev_data** %6, align 8
  %27 = getelementptr inbounds %struct.wacom_hdev_data, %struct.wacom_hdev_data* %26, i32 0, i32 3
  %28 = call i32 @kref_init(i32* %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %30 = load %struct.wacom_hdev_data*, %struct.wacom_hdev_data** %6, align 8
  %31 = getelementptr inbounds %struct.wacom_hdev_data, %struct.wacom_hdev_data* %30, i32 0, i32 2
  store %struct.hid_device* %29, %struct.hid_device** %31, align 8
  %32 = load %struct.wacom_hdev_data*, %struct.wacom_hdev_data** %6, align 8
  %33 = getelementptr inbounds %struct.wacom_hdev_data, %struct.wacom_hdev_data* %32, i32 0, i32 1
  %34 = call i32 @list_add_tail(i32* %33, i32* @wacom_udev_list)
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.wacom_hdev_data*, %struct.wacom_hdev_data** %6, align 8
  %37 = getelementptr inbounds %struct.wacom_hdev_data, %struct.wacom_hdev_data* %36, i32 0, i32 0
  %38 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %39 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %38, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  %40 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %41 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %40, i32 0, i32 0
  %42 = load %struct.wacom*, %struct.wacom** %4, align 8
  %43 = call i32 @devm_add_action(i32* %41, i32 (%struct.wacom*)* @wacom_remove_shared_data, %struct.wacom* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = call i32 @mutex_unlock(i32* @wacom_udev_list_lock)
  %48 = load %struct.wacom*, %struct.wacom** %4, align 8
  %49 = call i32 @wacom_remove_shared_data(%struct.wacom* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %84

51:                                               ; preds = %35
  %52 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %53 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %62 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store %struct.hid_device* %60, %struct.hid_device** %64, align 8
  br label %80

65:                                               ; preds = %51
  %66 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %67 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %75 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %76 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.hid_device* %74, %struct.hid_device** %78, align 8
  br label %79

79:                                               ; preds = %73, %65
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80, %22
  %82 = call i32 @mutex_unlock(i32* @wacom_udev_list_lock)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %46
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wacom_hdev_data* @wacom_get_hdev_data(%struct.hid_device*) #1

declare dso_local %struct.wacom_hdev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devm_add_action(i32*, i32 (%struct.wacom*)*, %struct.wacom*) #1

declare dso_local i32 @wacom_remove_shared_data(%struct.wacom*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
