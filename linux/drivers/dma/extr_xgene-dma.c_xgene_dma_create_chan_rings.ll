; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_create_chan_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_create_chan_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_chan = type { i32, i64, %struct.xgene_dma_ring, %struct.xgene_dma_ring }
%struct.xgene_dma_ring = type { i32, i32, i32, i32, i32, i64, i32 }

@XGENE_DMA_RING_OWNER_CPU = common dso_local global i32 0, align 4
@XGENE_DMA_CPU_BUFNUM = common dso_local global i64 0, align 8
@XGENE_DMA_RING_CFG_SIZE_64KB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Rx ring id 0x%X num %d desc 0x%p\0A\00", align 1
@XGENE_DMA_RING_OWNER_DMA = common dso_local global i32 0, align 4
@XGENE_DMA_BUFNUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Tx ring id 0x%X num %d desc 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_dma_chan*)* @xgene_dma_create_chan_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_create_chan_rings(%struct.xgene_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca %struct.xgene_dma_ring*, align 8
  %5 = alloca %struct.xgene_dma_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %3, align 8
  %7 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %7, i32 0, i32 3
  store %struct.xgene_dma_ring* %8, %struct.xgene_dma_ring** %4, align 8
  %9 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %9, i32 0, i32 2
  store %struct.xgene_dma_ring* %10, %struct.xgene_dma_ring** %5, align 8
  %11 = load i32, i32* @XGENE_DMA_RING_OWNER_CPU, align 4
  %12 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %13 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* @XGENE_DMA_CPU_BUFNUM, align 8
  %15 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %20 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %22 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %23 = load i32, i32* @XGENE_DMA_RING_CFG_SIZE_64KB, align 4
  %24 = call i32 @xgene_dma_create_ring_one(%struct.xgene_dma_chan* %21, %struct.xgene_dma_ring* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %31 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %32 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %35 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %38 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @chan_dbg(%struct.xgene_dma_chan* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* @XGENE_DMA_RING_OWNER_DMA, align 4
  %42 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %43 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @XGENE_DMA_BUFNUM, align 8
  %45 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %50 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  %51 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %52 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %53 = load i32, i32* @XGENE_DMA_RING_CFG_SIZE_64KB, align 4
  %54 = call i32 @xgene_dma_create_ring_one(%struct.xgene_dma_chan* %51, %struct.xgene_dma_ring* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %29
  %58 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %59 = call i32 @xgene_dma_delete_ring_one(%struct.xgene_dma_ring* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %85

61:                                               ; preds = %29
  %62 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %4, align 8
  %63 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @XGENE_DMA_RING_DST_ID(i32 %64)
  %66 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %67 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %69 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %70 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %73 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %76 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @chan_dbg(%struct.xgene_dma_chan* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  %79 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %80 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %83 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %61, %57, %27
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @xgene_dma_create_ring_one(%struct.xgene_dma_chan*, %struct.xgene_dma_ring*, i32) #1

declare dso_local i32 @chan_dbg(%struct.xgene_dma_chan*, i8*, i32, i32, i32) #1

declare dso_local i32 @xgene_dma_delete_ring_one(%struct.xgene_dma_ring*) #1

declare dso_local i32 @XGENE_DMA_RING_DST_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
