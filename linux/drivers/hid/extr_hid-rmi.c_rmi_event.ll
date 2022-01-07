; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i32 }
%struct.rmi_data = type { i32, i32 }

@RMI_DEVICE = common dso_local global i32 0, align 4
@HID_GD_POINTER = common dso_local global i64 0, align 8
@HID_GD_MOUSE = common dso_local global i64 0, align 8
@RMI_DEVICE_HAS_PHYS_BUTTONS = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_GD_X = common dso_local global i32 0, align 4
@HID_GD_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @rmi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rmi_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.rmi_data* %12, %struct.rmi_data** %10, align 8
  %13 = load %struct.rmi_data*, %struct.rmi_data** %10, align 8
  %14 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RMI_DEVICE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %4
  %20 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %21 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HID_GD_POINTER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %27 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HID_GD_MOUSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %25, %19
  %32 = load %struct.rmi_data*, %struct.rmi_data** %10, align 8
  %33 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RMI_DEVICE_HAS_PHYS_BUTTONS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %31
  %39 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %40 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HID_USAGE_PAGE, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @HID_UP_BUTTON, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %69

47:                                               ; preds = %38
  %48 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HID_GD_X, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %55 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HID_GD_Y, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %69

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %31
  %65 = load %struct.rmi_data*, %struct.rmi_data** %10, align 8
  %66 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %65, i32 0, i32 1
  %67 = call i32 @schedule_work(i32* %66)
  store i32 1, i32* %5, align 4
  br label %69

68:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %64, %62, %46
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
