; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_setup_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_ring = type { i32, i32, i64, %struct.TYPE_2__*, i32, %struct.xgene_dma_desc_hw*, i32, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.xgene_dma_desc_hw = type { i32 }

@XGENE_DMA_RING_WQ_DESC_SIZE = common dso_local global i32 0, align 4
@XGENE_DMA_RING_TYPE_REGULAR = common dso_local global i32 0, align 4
@XGENE_DMA_RING_OWNER_DMA = common dso_local global i64 0, align 8
@XGENE_DMA_RING_ID = common dso_local global i64 0, align 8
@XGENE_DMA_RING_ID_BUF = common dso_local global i64 0, align 8
@XGENE_DMA_RING_OWNER_CPU = common dso_local global i64 0, align 8
@XGENE_DMA_DESC_EMPTY_SIGNATURE = common dso_local global i32 0, align 4
@XGENE_DMA_RING_NE_INT_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_ring*)* @xgene_dma_setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_setup_ring(%struct.xgene_dma_ring* %0) #0 {
  %2 = alloca %struct.xgene_dma_ring*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xgene_dma_desc_hw*, align 8
  store %struct.xgene_dma_ring* %0, %struct.xgene_dma_ring** %2, align 8
  %8 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %8, i32 0, i32 10
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %12 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XGENE_DMA_RING_WQ_DESC_SIZE, align 4
  %18 = sdiv i32 %16, %17
  %19 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %20 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %22 = call i32 @xgene_dma_clr_ring_state(%struct.xgene_dma_ring* %21)
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @XGENE_DMA_RING_TYPE_REGULAR, align 4
  %25 = call i32 @XGENE_DMA_RING_TYPE_SET(i8* %23, i32 %24)
  %26 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %27 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XGENE_DMA_RING_OWNER_DMA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @XGENE_DMA_RING_RECOMBBUF_SET(i8* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @XGENE_DMA_RING_RECOMTIMEOUTL_SET(i8* %34)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @XGENE_DMA_RING_RECOMTIMEOUTH_SET(i8* %36)
  br label %38

38:                                               ; preds = %31, %1
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @XGENE_DMA_RING_SELTHRSH_SET(i8* %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @XGENE_DMA_RING_ACCEPTLERR_SET(i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @XGENE_DMA_RING_COHERENT_SET(i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @XGENE_DMA_RING_ADDRL_SET(i8* %45, i32 %46)
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @XGENE_DMA_RING_ADDRH_SET(i8* %48, i32 %49)
  %51 = load i8*, i8** %3, align 8
  %52 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %53 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @XGENE_DMA_RING_SIZE_SET(i8* %51, i32 %54)
  %56 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %57 = call i32 @xgene_dma_wr_ring_state(%struct.xgene_dma_ring* %56)
  %58 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %59 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @XGENE_DMA_RING_ID_SETUP(i32 %60)
  %62 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %63 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XGENE_DMA_RING_ID, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32(i64 %61, i64 %68)
  %70 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %71 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @XGENE_DMA_RING_ID_BUF_SETUP(i32 %72)
  %74 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %75 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XGENE_DMA_RING_ID_BUF, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @iowrite32(i64 %73, i64 %80)
  %82 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %83 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XGENE_DMA_RING_OWNER_CPU, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %38
  br label %132

88:                                               ; preds = %38
  store i64 0, i64* %5, align 8
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %92 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %98 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %97, i32 0, i32 5
  %99 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %99, i64 %100
  store %struct.xgene_dma_desc_hw* %101, %struct.xgene_dma_desc_hw** %7, align 8
  %102 = load i32, i32* @XGENE_DMA_DESC_EMPTY_SIGNATURE, align 4
  %103 = call i32 @cpu_to_le64(i32 %102)
  %104 = load %struct.xgene_dma_desc_hw*, %struct.xgene_dma_desc_hw** %7, align 8
  %105 = getelementptr inbounds %struct.xgene_dma_desc_hw, %struct.xgene_dma_desc_hw* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %96
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %5, align 8
  br label %89

109:                                              ; preds = %89
  %110 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %111 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @XGENE_DMA_RING_NE_INT_MODE, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i64 @ioread32(i64 %116)
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %120 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @XGENE_DMA_RING_NE_INT_MODE_SET(i64 %118, i32 %121)
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.xgene_dma_ring*, %struct.xgene_dma_ring** %2, align 8
  %125 = getelementptr inbounds %struct.xgene_dma_ring, %struct.xgene_dma_ring* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @XGENE_DMA_RING_NE_INT_MODE, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @iowrite32(i64 %123, i64 %130)
  br label %132

132:                                              ; preds = %109, %87
  ret void
}

declare dso_local i32 @xgene_dma_clr_ring_state(%struct.xgene_dma_ring*) #1

declare dso_local i32 @XGENE_DMA_RING_TYPE_SET(i8*, i32) #1

declare dso_local i32 @XGENE_DMA_RING_RECOMBBUF_SET(i8*) #1

declare dso_local i32 @XGENE_DMA_RING_RECOMTIMEOUTL_SET(i8*) #1

declare dso_local i32 @XGENE_DMA_RING_RECOMTIMEOUTH_SET(i8*) #1

declare dso_local i32 @XGENE_DMA_RING_SELTHRSH_SET(i8*) #1

declare dso_local i32 @XGENE_DMA_RING_ACCEPTLERR_SET(i8*) #1

declare dso_local i32 @XGENE_DMA_RING_COHERENT_SET(i8*) #1

declare dso_local i32 @XGENE_DMA_RING_ADDRL_SET(i8*, i32) #1

declare dso_local i32 @XGENE_DMA_RING_ADDRH_SET(i8*, i32) #1

declare dso_local i32 @XGENE_DMA_RING_SIZE_SET(i8*, i32) #1

declare dso_local i32 @xgene_dma_wr_ring_state(%struct.xgene_dma_ring*) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i64 @XGENE_DMA_RING_ID_SETUP(i32) #1

declare dso_local i64 @XGENE_DMA_RING_ID_BUF_SETUP(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @XGENE_DMA_RING_NE_INT_MODE_SET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
