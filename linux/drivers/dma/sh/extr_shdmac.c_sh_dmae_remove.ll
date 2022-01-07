; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_dmae_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.dma_device }
%struct.dma_device = type { i32 }

@sh_dmae_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_dmae_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sh_dmae_device*, align 8
  %4 = alloca %struct.dma_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sh_dmae_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sh_dmae_device* %6, %struct.sh_dmae_device** %3, align 8
  %7 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %8 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.dma_device* %9, %struct.dma_device** %4, align 8
  %10 = load %struct.dma_device*, %struct.dma_device** %4, align 8
  %11 = call i32 @dma_async_device_unregister(%struct.dma_device* %10)
  %12 = call i32 @spin_lock_irq(i32* @sh_dmae_lock)
  %13 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %14 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %13, i32 0, i32 1
  %15 = call i32 @list_del_rcu(i32* %14)
  %16 = call i32 @spin_unlock_irq(i32* @sh_dmae_lock)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_disable(i32* %18)
  %20 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %21 = call i32 @sh_dmae_chan_remove(%struct.sh_dmae_device* %20)
  %22 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %3, align 8
  %23 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %22, i32 0, i32 0
  %24 = call i32 @shdma_cleanup(%struct.TYPE_2__* %23)
  %25 = call i32 (...) @synchronize_rcu()
  ret i32 0
}

declare dso_local %struct.sh_dmae_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @sh_dmae_chan_remove(%struct.sh_dmae_device*) #1

declare dso_local i32 @shdma_cleanup(%struct.TYPE_2__*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
