; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.virt_dma_chan = type { i32 }
%struct.uniphier_mdmac_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @uniphier_mdmac_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_mdmac_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.virt_dma_chan*, align 8
  %4 = alloca %struct.uniphier_mdmac_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.virt_dma_chan* @to_virt_chan(%struct.dma_chan* %7)
  store %struct.virt_dma_chan* %8, %struct.virt_dma_chan** %3, align 8
  %9 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %10 = call %struct.uniphier_mdmac_chan* @to_uniphier_mdmac_chan(%struct.virt_dma_chan* %9)
  store %struct.uniphier_mdmac_chan* %10, %struct.uniphier_mdmac_chan** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @head, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %4, align 8
  %18 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %4, align 8
  %23 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @vchan_terminate_vdesc(i32* %25)
  %27 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %4, align 8
  %28 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %27, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %4, align 8
  %30 = call i32 @uniphier_mdmac_abort(%struct.uniphier_mdmac_chan* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %33 = call i32 @vchan_get_all_descriptors(%struct.virt_dma_chan* %32, i32* @head)
  %34 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %3, align 8
  %39 = call i32 @vchan_dma_desc_free_list(%struct.virt_dma_chan* %38, i32* @head)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.virt_dma_chan* @to_virt_chan(%struct.dma_chan*) #1

declare dso_local %struct.uniphier_mdmac_chan* @to_uniphier_mdmac_chan(%struct.virt_dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_terminate_vdesc(i32*) #1

declare dso_local i32 @uniphier_mdmac_abort(%struct.uniphier_mdmac_chan*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.virt_dma_chan*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.virt_dma_chan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
