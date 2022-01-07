; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.hv_driver = type { i32 (%struct.hv_device*)* }
%struct.hv_device = type opaque
%struct.hv_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vmbus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hv_driver*, align 8
  %4 = alloca %struct.hv_device.0*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.hv_device.0* @device_to_hv_device(%struct.device* %5)
  store %struct.hv_device.0* %6, %struct.hv_device.0** %4, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.hv_driver* @drv_to_hv_drv(i64 %14)
  store %struct.hv_driver* %15, %struct.hv_driver** %3, align 8
  %16 = load %struct.hv_driver*, %struct.hv_driver** %3, align 8
  %17 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.hv_device*)*, i32 (%struct.hv_device*)** %17, align 8
  %19 = icmp ne i32 (%struct.hv_device*)* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.hv_driver*, %struct.hv_driver** %3, align 8
  %22 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.hv_device*)*, i32 (%struct.hv_device*)** %22, align 8
  %24 = load %struct.hv_device.0*, %struct.hv_device.0** %4, align 8
  %25 = bitcast %struct.hv_device.0* %24 to %struct.hv_device*
  %26 = call i32 %23(%struct.hv_device* %25)
  br label %27

27:                                               ; preds = %20, %11
  br label %28

28:                                               ; preds = %27, %1
  ret i32 0
}

declare dso_local %struct.hv_device.0* @device_to_hv_device(%struct.device*) #1

declare dso_local %struct.hv_driver* @drv_to_hv_drv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
