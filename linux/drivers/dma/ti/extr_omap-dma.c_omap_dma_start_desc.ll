; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_start_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_start_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { i64, %struct.omap_desc*, i32 }
%struct.omap_desc = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.virt_dma_desc = type { i32, i32 }

@CCR = common dso_local global i32 0, align 4
@CCR2 = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@CSSA = common dso_local global i32 0, align 4
@CSEI = common dso_local global i32 0, align 4
@CSFI = common dso_local global i32 0, align 4
@CDSA = common dso_local global i32 0, align 4
@CDEI = common dso_local global i32 0, align 4
@CDFI = common dso_local global i32 0, align 4
@CSDP = common dso_local global i32 0, align 4
@CLNK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_chan*)* @omap_dma_start_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_start_desc(%struct.omap_chan* %0) #0 {
  %2 = alloca %struct.omap_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  %4 = alloca %struct.omap_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_chan* %0, %struct.omap_chan** %2, align 8
  %8 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %9 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %8, i32 0, i32 2
  %10 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %9)
  store %struct.virt_dma_desc* %10, %struct.virt_dma_desc** %3, align 8
  %11 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %12 = icmp ne %struct.virt_dma_desc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %15 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %14, i32 0, i32 1
  store %struct.omap_desc* null, %struct.omap_desc** %15, align 8
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %18 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %21 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %20, i32 0, i32 0
  %22 = call %struct.omap_desc* @to_omap_dma_desc(i32* %21)
  store %struct.omap_desc* %22, %struct.omap_desc** %4, align 8
  %23 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %24 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %23, i32 0, i32 1
  store %struct.omap_desc* %22, %struct.omap_desc** %24, align 8
  %25 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %26 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @mb()
  %28 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %29 = load i32, i32* @CCR, align 4
  %30 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %31 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @omap_dma_chan_write(%struct.omap_chan* %28, i32 %29, i32 %32)
  %34 = call i64 (...) @dma_omap1()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %16
  %37 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %38 = load i32, i32* @CCR2, align 4
  %39 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %40 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 16
  %43 = call i32 @omap_dma_chan_write(%struct.omap_chan* %37, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %36, %16
  %45 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %46 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %52 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @CSSA, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @CSEI, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @CSFI, align 4
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %50
  %61 = load i32, i32* @CDSA, align 4
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @CDEI, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @CDFI, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %68 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @omap_dma_chan_write(%struct.omap_chan* %65, i32 %66, i32 %69)
  %71 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %74 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @omap_dma_chan_write(%struct.omap_chan* %71, i32 %72, i32 %75)
  %77 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %80 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @omap_dma_chan_write(%struct.omap_chan* %77, i32 %78, i32 %81)
  %83 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %84 = load i32, i32* @CSDP, align 4
  %85 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %86 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @omap_dma_chan_write(%struct.omap_chan* %83, i32 %84, i32 %87)
  %89 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %90 = load i32, i32* @CLNK_CTRL, align 4
  %91 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %92 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @omap_dma_chan_write(%struct.omap_chan* %89, i32 %90, i32 %93)
  %95 = load %struct.omap_chan*, %struct.omap_chan** %2, align 8
  %96 = load %struct.omap_desc*, %struct.omap_desc** %4, align 8
  %97 = call i32 @omap_dma_start_sg(%struct.omap_chan* %95, %struct.omap_desc* %96)
  br label %98

98:                                               ; preds = %64, %13
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.omap_desc* @to_omap_dma_desc(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @omap_dma_chan_write(%struct.omap_chan*, i32, i32) #1

declare dso_local i64 @dma_omap1(...) #1

declare dso_local i32 @omap_dma_start_sg(%struct.omap_chan*, %struct.omap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
