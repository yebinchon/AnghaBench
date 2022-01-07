; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hid_device = type { i32, i32, %struct.hid_driver* }
%struct.hid_driver = type { i32 (%struct.hid_device.0*)* }
%struct.hid_device.0 = type opaque

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hid_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.hid_device* @to_hid_device(%struct.device* %6)
  store %struct.hid_device* %7, %struct.hid_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 1
  %10 = call i64 @down_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINTR, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 2
  %20 = load %struct.hid_driver*, %struct.hid_driver** %19, align 8
  store %struct.hid_driver* %20, %struct.hid_driver** %4, align 8
  %21 = load %struct.hid_driver*, %struct.hid_driver** %4, align 8
  %22 = icmp ne %struct.hid_driver* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load %struct.hid_driver*, %struct.hid_driver** %4, align 8
  %25 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.hid_device.0*)*, i32 (%struct.hid_device.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.hid_device.0*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.hid_driver*, %struct.hid_driver** %4, align 8
  %30 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.hid_device.0*)*, i32 (%struct.hid_device.0*)** %30, align 8
  %32 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %33 = bitcast %struct.hid_device* %32 to %struct.hid_device.0*
  %34 = call i32 %31(%struct.hid_device.0* %33)
  br label %38

35:                                               ; preds = %23
  %36 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %37 = call i32 @hid_hw_stop(%struct.hid_device* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %40 = call i32 @hid_close_report(%struct.hid_device* %39)
  %41 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 2
  store %struct.hid_driver* null, %struct.hid_driver** %42, align 8
  br label %43

43:                                               ; preds = %38, %15
  %44 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %50 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %49, i32 0, i32 1
  %51 = call i32 @up(i32* %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %12
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

declare dso_local i32 @hid_close_report(%struct.hid_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
