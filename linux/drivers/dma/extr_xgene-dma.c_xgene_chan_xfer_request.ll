; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_chan_xfer_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_chan_xfer_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_chan = type { i32, %struct.xgene_dma_ring }
%struct.xgene_dma_ring = type { i64, i64, i32, %struct.xgene_dma_desc_hw* }
%struct.xgene_dma_desc_hw = type { i32 }
%struct.xgene_dma_desc_sw = type { i32, i32, i32 }

@XGENE_DMA_FLAG_64B_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_chan*, %struct.xgene_dma_desc_sw*)* @xgene_chan_xfer_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_chan_xfer_request(%struct.xgene_dma_chan* %0, %struct.xgene_dma_desc_sw* %1) #0 {
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca %struct.xgene_dma_desc_sw*, align 8
  %5 = alloca %struct.xgene_dma_ring*, align 8
  %6 = alloca %struct.xgene_dma_desc_hw*, align 8
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %3, align 8
  store %struct.xgene_dma_desc_sw* %1, %struct.xgene_dma_desc_sw** %4, align 8
  %7 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %7, i32 0, i32 1
  store %struct.xgene_dma_ring* %8, %struct.xgene_dma_ring** %5, align 8
  %9 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %10 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %9, i32 0, i32 3
  %11 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %10, align 8
  %12 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %13 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %11, i64 %14
  store %struct.xgene_dma_desc_hw* %15, %struct.xgene_dma_desc_hw** %6, align 8
  %16 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %17 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %21 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %26 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %6, align 8
  %29 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %30 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %29, i32 0, i32 2
  %31 = call i32 @memcpy(%struct.xgene_dma_desc_hw* %28, i32* %30, i32 4)
  %32 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %33 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XGENE_DMA_FLAG_64B_DESC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %27
  %39 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %40 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %39, i32 0, i32 3
  %41 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %40, align 8
  %42 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %43 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %41, i64 %44
  store %struct.xgene_dma_desc_hw* %45, %struct.xgene_dma_desc_hw** %6, align 8
  %46 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %47 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %51 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %56 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %38
  %58 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %6, align 8
  %59 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %60 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %59, i32 0, i32 1
  %61 = call i32 @memcpy(%struct.xgene_dma_desc_hw* %58, i32* %60, i32 4)
  br label %62

62:                                               ; preds = %57, %27
  %63 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %64 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XGENE_DMA_FLAG_64B_DESC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 2, i32 1
  %71 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %72 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %76 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @XGENE_DMA_FLAG_64B_DESC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 2, i32 1
  %83 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %5, align 8
  %84 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @iowrite32(i32 %82, i32 %85)
  ret void
}

declare dso_local i32 @memcpy(%struct.xgene_dma_desc_hw*, i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
