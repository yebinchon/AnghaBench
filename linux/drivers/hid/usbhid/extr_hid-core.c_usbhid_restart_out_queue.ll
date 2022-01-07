; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_out_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_out_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhid_device = type { i32, i32, i32, i32, i32 }
%struct.hid_device = type { i32 }

@HID_RESET_PENDING = common dso_local global i32 0, align 4
@HID_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Kicking head %d tail %d\00", align 1
@HID_OUT_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhid_device*)* @usbhid_restart_out_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_restart_out_queue(%struct.usbhid_device* %0) #0 {
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
  %12 = icmp ne %struct.hid_device* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @HID_RESET_PENDING, align 4
  %15 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %16 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @HID_SUSPENDED, align 4
  %21 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %22 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %21, i32 0, i32 2
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13, %1
  store i32 0, i32* %2, align 4
  br label %87

26:                                               ; preds = %19
  %27 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %28 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %31 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br i1 %33, label %35, label %85

35:                                               ; preds = %26
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %38 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %41 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hid_dbg(%struct.hid_device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %45 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_autopm_get_interface_async(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %87

52:                                               ; preds = %35
  %53 = load i32, i32* @HID_SUSPENDED, align 4
  %54 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %55 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %60 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_autopm_put_interface_no_suspend(i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %52
  %65 = load i32, i32* @HID_OUT_RUNNING, align 4
  %66 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %67 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %66, i32 0, i32 2
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = call i64 @hid_submit_out(%struct.hid_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load i32, i32* @HID_OUT_RUNNING, align 4
  %74 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %75 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %74, i32 0, i32 2
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %78 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_autopm_put_interface_async(i32 %79)
  br label %81

81:                                               ; preds = %72, %64
  %82 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %83 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %82, i32 0, i32 0
  %84 = call i32 @wake_up(i32* %83)
  br label %85

85:                                               ; preds = %81, %26
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %58, %50, %25
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.hid_device* @usb_get_intfdata(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i32, i32) #1

declare dso_local i32 @usb_autopm_get_interface_async(i32) #1

declare dso_local i32 @usb_autopm_put_interface_no_suspend(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hid_submit_out(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
