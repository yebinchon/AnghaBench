; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_make_tx_sdma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_make_tx_sdma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_txreq = type { i64, %struct.sdma_desc* }
%struct.sdma_desc = type { i32* }

@SDMA_DESC1_GENERATION_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_GENERATION_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC0_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@SDMA_DESC0_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC0_BYTE_COUNT_MASK = common dso_local global i32 0, align 4
@SDMA_DESC0_BYTE_COUNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_txreq*, i32, i64, i64)* @make_tx_sdma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_tx_sdma_desc(%struct.sdma_txreq* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sdma_txreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sdma_desc*, align 8
  store %struct.sdma_txreq* %0, %struct.sdma_txreq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %11 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %10, i32 0, i32 1
  %12 = load %struct.sdma_desc*, %struct.sdma_desc** %11, align 8
  %13 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %14 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %12, i64 %15
  store %struct.sdma_desc* %16, %struct.sdma_desc** %9, align 8
  %17 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %18 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SDMA_DESC1_GENERATION_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SDMA_DESC1_GENERATION_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %28 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  br label %47

33:                                               ; preds = %4
  %34 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %35 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SDMA_DESC1_GENERATION_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @SDMA_DESC1_GENERATION_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %44 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %33, %21
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @SDMA_DESC0_PHY_ADDR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @SDMA_DESC0_PHY_ADDR_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @SDMA_DESC0_BYTE_COUNT_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @SDMA_DESC0_BYTE_COUNT_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %53, %59
  %61 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %62 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
