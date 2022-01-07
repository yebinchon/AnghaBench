; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_ctrl_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_ctrl_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhid_device = type { i32, i32, i32, i32, i32 }
%struct.hid_device = type { i32 }

@HID_RESET_PENDING = common dso_local global i32 0, align 4
@HID_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Kicking head %d tail %d\00", align 1
@HID_CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhid_device*)* @usbhid_restart_ctrl_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhid_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbhid_device* %0, %struct.usbhid_device** %3, align 8
  %7 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %8 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hid_device* @usb_get_intfdata(i32 %9)
  store %struct.hid_device* %10, %struct.hid_device** %4, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = icmp eq %struct.hid_device* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = icmp ne %struct.hid_device* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @HID_RESET_PENDING, align 4
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %20 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @HID_SUSPENDED, align 4
  %25 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %26 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17, %1
  store i32 0, i32* %2, align 4
  br label %91

30:                                               ; preds = %23
  %31 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %32 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %35 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br i1 %37, label %39, label %89

39:                                               ; preds = %30
  %40 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %41 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %42 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %45 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hid_dbg(%struct.hid_device* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %49 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_autopm_get_interface_async(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %91

56:                                               ; preds = %39
  %57 = load i32, i32* @HID_SUSPENDED, align 4
  %58 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %59 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %58, i32 0, i32 2
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %64 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_autopm_put_interface_no_suspend(i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %91

68:                                               ; preds = %56
  %69 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %70 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %71 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %70, i32 0, i32 2
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  %73 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %74 = call i64 @hid_submit_ctrl(%struct.hid_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %78 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %79 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %78, i32 0, i32 2
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %82 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_autopm_put_interface_async(i32 %83)
  br label %85

85:                                               ; preds = %76, %68
  %86 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %87 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %86, i32 0, i32 0
  %88 = call i32 @wake_up(i32* %87)
  br label %89

89:                                               ; preds = %85, %30
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %62, %54, %29
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.hid_device* @usb_get_intfdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i32, i32) #1

declare dso_local i32 @usb_autopm_get_interface_async(i32) #1

declare dso_local i32 @usb_autopm_put_interface_no_suspend(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hid_submit_ctrl(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
