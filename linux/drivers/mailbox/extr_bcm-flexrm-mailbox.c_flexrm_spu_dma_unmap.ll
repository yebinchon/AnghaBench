; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.brcm_message*)* @flexrm_spu_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexrm_spu_dma_unmap(%struct.device* %0, %struct.brcm_message* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.brcm_message*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.brcm_message* %1, %struct.brcm_message** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.brcm_message*, %struct.brcm_message** %4, align 8
  %7 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.brcm_message*, %struct.brcm_message** %4, align 8
  %11 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sg_nents(i32 %13)
  %15 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %16 = call i32 @dma_unmap_sg(%struct.device* %5, i32 %9, i32 %14, i32 %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.brcm_message*, %struct.brcm_message** %4, align 8
  %19 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.brcm_message*, %struct.brcm_message** %4, align 8
  %23 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sg_nents(i32 %25)
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_sg(%struct.device* %17, i32 %21, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
