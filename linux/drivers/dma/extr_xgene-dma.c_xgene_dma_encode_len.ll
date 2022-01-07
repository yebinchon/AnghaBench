; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_encode_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_encode_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XGENE_DMA_MAX_BYTE_CNT = common dso_local global i64 0, align 8
@XGENE_DMA_DESC_BUFLEN_POS = common dso_local global i32 0, align 4
@XGENE_DMA_16K_BUFFER_LEN_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @xgene_dma_encode_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_encode_len(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @XGENE_DMA_MAX_BYTE_CNT, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @XGENE_DMA_DESC_BUFLEN_POS, align 4
  %10 = shl i32 %8, %9
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @XGENE_DMA_16K_BUFFER_LEN_CODE, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %10, %6 ], [ %12, %11 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
