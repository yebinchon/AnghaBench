; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_mbox_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_mbox_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.flexrm_mbox = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @flexrm_mbox_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_mbox_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.flexrm_mbox*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.flexrm_mbox* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.flexrm_mbox* %8, %struct.flexrm_mbox** %4, align 8
  %9 = load %struct.flexrm_mbox*, %struct.flexrm_mbox** %4, align 8
  %10 = getelementptr inbounds %struct.flexrm_mbox, %struct.flexrm_mbox* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @debugfs_remove_recursive(i32 %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @platform_msi_domain_free_irqs(%struct.device* %13)
  %15 = load %struct.flexrm_mbox*, %struct.flexrm_mbox** %4, align 8
  %16 = getelementptr inbounds %struct.flexrm_mbox, %struct.flexrm_mbox* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dma_pool_destroy(i32 %17)
  %19 = load %struct.flexrm_mbox*, %struct.flexrm_mbox** %4, align 8
  %20 = getelementptr inbounds %struct.flexrm_mbox, %struct.flexrm_mbox* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_pool_destroy(i32 %21)
  ret i32 0
}

declare dso_local %struct.flexrm_mbox* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @platform_msi_domain_free_irqs(%struct.device*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
