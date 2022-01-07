; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mcb_driver = type { i32 (%struct.mcb_device*)* }
%struct.mcb_device = type opaque
%struct.mcb_device.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @mcb_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcb_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mcb_driver*, align 8
  %4 = alloca %struct.mcb_device.0*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mcb_driver* @to_mcb_driver(i32 %7)
  store %struct.mcb_driver* %8, %struct.mcb_driver** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.mcb_device.0* @to_mcb_device(%struct.device* %9)
  store %struct.mcb_device.0* %10, %struct.mcb_device.0** %4, align 8
  %11 = load %struct.mcb_driver*, %struct.mcb_driver** %3, align 8
  %12 = icmp ne %struct.mcb_driver* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.mcb_driver*, %struct.mcb_driver** %3, align 8
  %15 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.mcb_device*)*, i32 (%struct.mcb_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.mcb_device*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.mcb_driver*, %struct.mcb_driver** %3, align 8
  %20 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.mcb_device*)*, i32 (%struct.mcb_device*)** %20, align 8
  %22 = load %struct.mcb_device.0*, %struct.mcb_device.0** %4, align 8
  %23 = bitcast %struct.mcb_device.0* %22 to %struct.mcb_device*
  %24 = call i32 %21(%struct.mcb_device* %23)
  br label %25

25:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local %struct.mcb_driver* @to_mcb_driver(i32) #1

declare dso_local %struct.mcb_device.0* @to_mcb_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
