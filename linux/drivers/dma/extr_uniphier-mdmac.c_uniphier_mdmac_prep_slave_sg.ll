; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_prep_slave_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_prep_slave_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.virt_dma_chan = type { i32 }
%struct.uniphier_mdmac_desc = type { i32, i32, i32, %struct.scatterlist* }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)* @uniphier_mdmac_prep_slave_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @uniphier_mdmac_prep_slave_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.virt_dma_chan*, align 8
  %15 = alloca %struct.uniphier_mdmac_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %17 = call %struct.virt_dma_chan* @to_virt_chan(%struct.dma_chan* %16)
  store %struct.virt_dma_chan* %17, %struct.virt_dma_chan** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @is_slave_direction(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %43

22:                                               ; preds = %6
  %23 = load i32, i32* @GFP_NOWAIT, align 4
  %24 = call %struct.uniphier_mdmac_desc* @kzalloc(i32 24, i32 %23)
  store %struct.uniphier_mdmac_desc* %24, %struct.uniphier_mdmac_desc** %15, align 8
  %25 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %15, align 8
  %26 = icmp ne %struct.uniphier_mdmac_desc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %30 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %15, align 8
  %31 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %30, i32 0, i32 3
  store %struct.scatterlist* %29, %struct.scatterlist** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %15, align 8
  %34 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %15, align 8
  %37 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %14, align 8
  %39 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %15, align 8
  %40 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %39, i32 0, i32 2
  %41 = load i64, i64* %12, align 8
  %42 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(%struct.virt_dma_chan* %38, i32* %40, i64 %41)
  store %struct.dma_async_tx_descriptor* %42, %struct.dma_async_tx_descriptor** %7, align 8
  br label %43

43:                                               ; preds = %28, %27, %21
  %44 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %44
}

declare dso_local %struct.virt_dma_chan* @to_virt_chan(%struct.dma_chan*) #1

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local %struct.uniphier_mdmac_desc* @kzalloc(i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(%struct.virt_dma_chan*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
