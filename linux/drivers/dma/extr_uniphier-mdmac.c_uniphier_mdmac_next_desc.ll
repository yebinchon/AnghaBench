; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_next_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_next_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_mdmac_desc = type { i32 }
%struct.uniphier_mdmac_chan = type { %struct.uniphier_mdmac_desc*, i32 }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uniphier_mdmac_desc* (%struct.uniphier_mdmac_chan*)* @uniphier_mdmac_next_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uniphier_mdmac_desc* @uniphier_mdmac_next_desc(%struct.uniphier_mdmac_chan* %0) #0 {
  %2 = alloca %struct.uniphier_mdmac_desc*, align 8
  %3 = alloca %struct.uniphier_mdmac_chan*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  store %struct.uniphier_mdmac_chan* %0, %struct.uniphier_mdmac_chan** %3, align 8
  %5 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %6 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %5, i32 0, i32 1
  %7 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %6)
  store %struct.virt_dma_desc* %7, %struct.virt_dma_desc** %4, align 8
  %8 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %9 = icmp ne %struct.virt_dma_desc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %12 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %11, i32 0, i32 0
  store %struct.uniphier_mdmac_desc* null, %struct.uniphier_mdmac_desc** %12, align 8
  store %struct.uniphier_mdmac_desc* null, %struct.uniphier_mdmac_desc** %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %15 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %18 = call %struct.uniphier_mdmac_desc* @to_uniphier_mdmac_desc(%struct.virt_dma_desc* %17)
  %19 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %20 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %19, i32 0, i32 0
  store %struct.uniphier_mdmac_desc* %18, %struct.uniphier_mdmac_desc** %20, align 8
  %21 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %3, align 8
  %22 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %21, i32 0, i32 0
  %23 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %22, align 8
  store %struct.uniphier_mdmac_desc* %23, %struct.uniphier_mdmac_desc** %2, align 8
  br label %24

24:                                               ; preds = %13, %10
  %25 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %2, align 8
  ret %struct.uniphier_mdmac_desc* %25
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.uniphier_mdmac_desc* @to_uniphier_mdmac_desc(%struct.virt_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
