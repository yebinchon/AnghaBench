; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_restart_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_restart_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i64, i64, i32 }

@HID_CLEAR_HALT = common dso_local global i32 0, align 4
@HID_RESET_PENDING = common dso_local global i32 0, align 4
@HID_SUSPENDED = common dso_local global i32 0, align 4
@HID_STARTED = common dso_local global i32 0, align 4
@HID_OUT_RUNNING = common dso_local global i32 0, align 4
@HID_CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @hid_restart_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_restart_io(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usbhid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  store %struct.usbhid_device* %8, %struct.usbhid_device** %3, align 8
  %9 = load i32, i32* @HID_CLEAR_HALT, align 4
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %11 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %10, i32 0, i32 1
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @HID_RESET_PENDING, align 4
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %18 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load i32, i32* @HID_SUSPENDED, align 4
  %21 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %22 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %21, i32 0, i32 1
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %25 = call i32 @usbhid_mark_busy(%struct.usbhid_device* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %1
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 4
  %34 = call i32 @schedule_work(i32* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %37 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %39 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @HID_STARTED, align 4
  %45 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %46 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %45, i32 0, i32 1
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %35
  br label %91

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %55 = call i64 @hid_start_in(%struct.hid_device* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %59 = call i32 @hid_io_error(%struct.hid_device* %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %63 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %66 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* @HID_OUT_RUNNING, align 4
  %71 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %72 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %71, i32 0, i32 1
  %73 = call i32 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %77 = call i32 @usbhid_restart_out_queue(%struct.usbhid_device* %76)
  br label %78

78:                                               ; preds = %75, %69, %61
  %79 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %80 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %81 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %80, i32 0, i32 1
  %82 = call i32 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %86 = call i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %89 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock_irq(i32* %89)
  br label %91

91:                                               ; preds = %87, %49
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usbhid_mark_busy(%struct.usbhid_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @hid_start_in(%struct.hid_device*) #1

declare dso_local i32 @hid_io_error(%struct.hid_device*) #1

declare dso_local i32 @usbhid_restart_out_queue(%struct.usbhid_device*) #1

declare dso_local i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
