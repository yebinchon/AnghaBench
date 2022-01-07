; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_op_transfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_dma_add_op_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_tdma_chain = type { i32 }
%struct.mv_cesa_dma_iter = type { i32 }
%struct.mv_cesa_sg_dma_iter = type { i64, i64, i64, i32 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@CESA_TDMA_DST_IN_SRAM = common dso_local global i32 0, align 4
@CESA_TDMA_SRC_IN_SRAM = common dso_local global i32 0, align 4
@CESA_SA_DATA_SRAM_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_cesa_dma_add_op_transfers(%struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_dma_iter* %1, %struct.mv_cesa_sg_dma_iter* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_cesa_tdma_chain*, align 8
  %7 = alloca %struct.mv_cesa_dma_iter*, align 8
  %8 = alloca %struct.mv_cesa_sg_dma_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_tdma_chain** %6, align 8
  store %struct.mv_cesa_dma_iter* %1, %struct.mv_cesa_dma_iter** %7, align 8
  store %struct.mv_cesa_sg_dma_iter* %2, %struct.mv_cesa_sg_dma_iter** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMA_TO_DEVICE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @CESA_TDMA_DST_IN_SRAM, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @CESA_TDMA_SRC_IN_SRAM, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %76, %24
  %27 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %7, align 8
  %28 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %29 = call i32 @mv_cesa_req_dma_iter_transfer_len(%struct.mv_cesa_dma_iter* %27, %struct.mv_cesa_sg_dma_iter* %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_TO_DEVICE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load i64, i64* @CESA_SA_DATA_SRAM_OFFSET, align 8
  %37 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %12, align 8
  %41 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %42 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @sg_dma_address(i32 %43)
  %45 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %46 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %13, align 8
  br label %63

49:                                               ; preds = %26
  %50 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %51 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @sg_dma_address(i32 %52)
  %54 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %55 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* @CESA_SA_DATA_SRAM_OFFSET, align 8
  %59 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %60 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %49, %35
  %64 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %6, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mv_cesa_dma_add_data_transfer(%struct.mv_cesa_tdma_chain* %64, i64 %65, i64 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %5, align 4
  br label %83

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %7, align 8
  %78 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @mv_cesa_req_dma_iter_next_transfer(%struct.mv_cesa_dma_iter* %77, %struct.mv_cesa_sg_dma_iter* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %26, label %82

82:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mv_cesa_req_dma_iter_transfer_len(%struct.mv_cesa_dma_iter*, %struct.mv_cesa_sg_dma_iter*) #1

declare dso_local i64 @sg_dma_address(i32) #1

declare dso_local i32 @mv_cesa_dma_add_data_transfer(%struct.mv_cesa_tdma_chain*, i64, i64, i32, i32, i32) #1

declare dso_local i64 @mv_cesa_req_dma_iter_next_transfer(%struct.mv_cesa_dma_iter*, %struct.mv_cesa_sg_dma_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
