; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i3c_device = type { i32 }
%struct.i3c_driver = type { i32 (%struct.i3c_device.0*)* }
%struct.i3c_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i3c_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_device_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i3c_device*, align 8
  %5 = alloca %struct.i3c_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.i3c_device* @dev_to_i3cdev(%struct.device* %7)
  store %struct.i3c_device* %8, %struct.i3c_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.i3c_driver* @drv_to_i3cdrv(i32 %11)
  store %struct.i3c_driver* %12, %struct.i3c_driver** %5, align 8
  %13 = load %struct.i3c_driver*, %struct.i3c_driver** %5, align 8
  %14 = getelementptr inbounds %struct.i3c_driver, %struct.i3c_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.i3c_device.0*)*, i32 (%struct.i3c_device.0*)** %14, align 8
  %16 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %17 = bitcast %struct.i3c_device* %16 to %struct.i3c_device.0*
  %18 = call i32 %15(%struct.i3c_device.0* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %25 = call i32 @i3c_device_free_ibi(%struct.i3c_device* %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.i3c_device* @dev_to_i3cdev(%struct.device*) #1

declare dso_local %struct.i3c_driver* @drv_to_i3cdrv(i32) #1

declare dso_local i32 @i3c_device_free_ibi(%struct.i3c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
