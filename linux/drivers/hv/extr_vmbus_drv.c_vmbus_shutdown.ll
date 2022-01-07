; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hv_driver = type { i32 (%struct.hv_device*)* }
%struct.hv_device = type opaque
%struct.hv_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @vmbus_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hv_driver*, align 8
  %4 = alloca %struct.hv_device.0*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.hv_device.0* @device_to_hv_device(%struct.device* %5)
  store %struct.hv_device.0* %6, %struct.hv_device.0** %4, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hv_driver* @drv_to_hv_drv(i32 %15)
  store %struct.hv_driver* %16, %struct.hv_driver** %3, align 8
  %17 = load %struct.hv_driver*, %struct.hv_driver** %3, align 8
  %18 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.hv_device*)*, i32 (%struct.hv_device*)** %18, align 8
  %20 = icmp ne i32 (%struct.hv_device*)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.hv_driver*, %struct.hv_driver** %3, align 8
  %23 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.hv_device*)*, i32 (%struct.hv_device*)** %23, align 8
  %25 = load %struct.hv_device.0*, %struct.hv_device.0** %4, align 8
  %26 = bitcast %struct.hv_device.0* %25 to %struct.hv_device*
  %27 = call i32 %24(%struct.hv_device* %26)
  br label %28

28:                                               ; preds = %11, %21, %12
  ret void
}

declare dso_local %struct.hv_device.0* @device_to_hv_device(%struct.device*) #1

declare dso_local %struct.hv_driver* @drv_to_hv_drv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
