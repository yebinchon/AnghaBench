; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fwnet_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fwnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fwnet_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fwnet_device* @netdev_priv(%struct.net_device* %6)
  store %struct.fwnet_device* %7, %struct.fwnet_device** %4, align 8
  %8 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %9 = call i32 @fwnet_broadcast_start(%struct.fwnet_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netif_start_queue(%struct.net_device* %15)
  %17 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %18 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %21 = call i32 @set_carrier_state(%struct.fwnet_device* %20)
  %22 = load %struct.fwnet_device*, %struct.fwnet_device** %4, align 8
  %23 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.fwnet_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fwnet_broadcast_start(%struct.fwnet_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_carrier_state(%struct.fwnet_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
