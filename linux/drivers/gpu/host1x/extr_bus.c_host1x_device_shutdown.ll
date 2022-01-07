; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c_host1x_device_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c_host1x_device_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.host1x_driver = type { i32 (%struct.host1x_device*)* }
%struct.host1x_device = type opaque
%struct.host1x_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @host1x_device_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_device_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.host1x_driver*, align 8
  %4 = alloca %struct.host1x_device.0*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.host1x_driver* @to_host1x_driver(i32 %7)
  store %struct.host1x_driver* %8, %struct.host1x_driver** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.host1x_device.0* @to_host1x_device(%struct.device* %9)
  store %struct.host1x_device.0* %10, %struct.host1x_device.0** %4, align 8
  %11 = load %struct.host1x_driver*, %struct.host1x_driver** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_driver, %struct.host1x_driver* %11, i32 0, i32 0
  %13 = load i32 (%struct.host1x_device*)*, i32 (%struct.host1x_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.host1x_device*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.host1x_driver*, %struct.host1x_driver** %3, align 8
  %17 = getelementptr inbounds %struct.host1x_driver, %struct.host1x_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.host1x_device*)*, i32 (%struct.host1x_device*)** %17, align 8
  %19 = load %struct.host1x_device.0*, %struct.host1x_device.0** %4, align 8
  %20 = bitcast %struct.host1x_device.0* %19 to %struct.host1x_device*
  %21 = call i32 %18(%struct.host1x_device* %20)
  br label %22

22:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.host1x_driver* @to_host1x_driver(i32) #1

declare dso_local %struct.host1x_device.0* @to_host1x_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
