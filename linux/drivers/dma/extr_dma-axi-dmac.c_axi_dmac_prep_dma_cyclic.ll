; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.axi_dmac_chan = type { i32, i32, i32 }
%struct.axi_dmac_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i64, i64, i32, i64)* @axi_dmac_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @axi_dmac_prep_dma_cyclic(%struct.dma_chan* %0, i32 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.axi_dmac_chan*, align 8
  %15 = alloca %struct.axi_dmac_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %19 = call %struct.axi_dmac_chan* @to_axi_dmac_chan(%struct.dma_chan* %18)
  store %struct.axi_dmac_chan* %19, %struct.axi_dmac_chan** %14, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %14, align 8
  %22 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %81

26:                                               ; preds = %6
  %27 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %14, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @axi_dmac_check_len(%struct.axi_dmac_chan* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @axi_dmac_check_addr(%struct.axi_dmac_chan* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %81

37:                                               ; preds = %31
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = urem i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %37
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %81

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = udiv i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %16, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %14, align 8
  %53 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DIV_ROUND_UP(i64 %51, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = mul i32 %56, %57
  %59 = call %struct.axi_dmac_desc* @axi_dmac_alloc_desc(i32 %58)
  store %struct.axi_dmac_desc* %59, %struct.axi_dmac_desc** %15, align 8
  %60 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %15, align 8
  %61 = icmp ne %struct.axi_dmac_desc* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %46
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %81

63:                                               ; preds = %46
  %64 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %14, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %15, align 8
  %70 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @axi_dmac_fill_linear_sg(%struct.axi_dmac_chan* %64, i32 %65, i32 %66, i32 %67, i64 %68, i32 %71)
  %73 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %15, align 8
  %74 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %14, align 8
  %76 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %75, i32 0, i32 1
  %77 = load %struct.axi_dmac_desc*, %struct.axi_dmac_desc** %15, align 8
  %78 = getelementptr inbounds %struct.axi_dmac_desc, %struct.axi_dmac_desc* %77, i32 0, i32 1
  %79 = load i64, i64* %13, align 8
  %80 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %76, i32* %78, i64 %79)
  store %struct.dma_async_tx_descriptor* %80, %struct.dma_async_tx_descriptor** %7, align 8
  br label %81

81:                                               ; preds = %63, %62, %45, %36, %25
  %82 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %82
}

declare dso_local %struct.axi_dmac_chan* @to_axi_dmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @axi_dmac_check_len(%struct.axi_dmac_chan*, i64) #1

declare dso_local i32 @axi_dmac_check_addr(%struct.axi_dmac_chan*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.axi_dmac_desc* @axi_dmac_alloc_desc(i32) #1

declare dso_local i32 @axi_dmac_fill_linear_sg(%struct.axi_dmac_chan*, i32, i32, i32, i64, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
