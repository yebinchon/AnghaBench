; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_req_dma_iter_next_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_req_dma_iter_next_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_dma_iter = type { i32, i32, i32 }

@CESA_SA_SRAM_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_cesa_dma_iter*)* @mv_cesa_req_dma_iter_next_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_req_dma_iter_next_op(%struct.mv_cesa_dma_iter* %0) #0 {
  %2 = alloca %struct.mv_cesa_dma_iter*, align 8
  store %struct.mv_cesa_dma_iter* %0, %struct.mv_cesa_dma_iter** %2, align 8
  %3 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %2, align 8
  %4 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %2, align 8
  %7 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %2, align 8
  %11 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %2, align 8
  %14 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load i32, i32* @CESA_SA_SRAM_PAYLOAD_SIZE, align 4
  %18 = call i32 @min(i32 %16, i32 %17)
  %19 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %2, align 8
  %20 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %2, align 8
  %22 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
