; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_spu_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcm_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.brcm_message*)* @flexrm_spu_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_spu_dma_map(%struct.device* %0, %struct.brcm_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.brcm_message*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.brcm_message* %1, %struct.brcm_message** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %9 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %13 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sg_nents(i32 %15)
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_map_sg(%struct.device* %7, i32 %11, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %26 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %30 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sg_nents(i32 %32)
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = call i32 @dma_map_sg(%struct.device* %24, i32 %28, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %23
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %41 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %45 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sg_nents(i32 %47)
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @dma_unmap_sg(%struct.device* %39, i32 %43, i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %38, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @dma_map_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
