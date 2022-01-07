; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_fw_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_fw_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fw_device = type { %struct.fw_device*, %struct.TYPE_2__*, %struct.fw_card* }
%struct.TYPE_2__ = type { i32* }
%struct.fw_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @fw_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.fw_device* @fw_device(%struct.device* %6)
  store %struct.fw_device* %7, %struct.fw_device** %3, align 8
  %8 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %9 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %8, i32 0, i32 2
  %10 = load %struct.fw_card*, %struct.fw_card** %9, align 8
  store %struct.fw_card* %10, %struct.fw_card** %4, align 8
  %11 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %12 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %20 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %24 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @fw_node_put(%struct.TYPE_2__* %25)
  %27 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %28 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %27, i32 0, i32 0
  %29 = load %struct.fw_device*, %struct.fw_device** %28, align 8
  %30 = call i32 @kfree(%struct.fw_device* %29)
  %31 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %32 = call i32 @kfree(%struct.fw_device* %31)
  %33 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %34 = call i32 @fw_card_put(%struct.fw_card* %33)
  ret void
}

declare dso_local %struct.fw_device* @fw_device(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fw_node_put(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.fw_device*) #1

declare dso_local i32 @fw_card_put(%struct.fw_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
