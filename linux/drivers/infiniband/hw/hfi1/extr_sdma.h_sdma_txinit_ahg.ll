; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txinit_ahg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h_sdma_txinit_ahg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_txreq = type { void (%struct.sdma_txreq*, i32)*, %struct.TYPE_2__*, i64, i64, i32*, i32*, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@ENODATA = common dso_local global i32 0, align 4
@MAX_SDMA_PKT_SIZE = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@SDMA_DESC0_FIRST_DESC_FLAG = common dso_local global i32 0, align 4
@SDMA_TXREQ_F_AHG_COPY = common dso_local global i64 0, align 8
@SDMA_DESC1_HEADER_INDEX_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_INDEX_SHIFT = common dso_local global i32 0, align 4
@SDMA_AHG_COPY = common dso_local global i64 0, align 8
@SDMA_DESC1_HEADER_MODE_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_SHIFT = common dso_local global i32 0, align 4
@SDMA_TXREQ_F_USE_AHG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_txreq*, i64, i64, i64, i64, i32*, i64, void (%struct.sdma_txreq*, i32)*)* @sdma_txinit_ahg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_txinit_ahg(%struct.sdma_txreq* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5, i64 %6, void (%struct.sdma_txreq*, i32)* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdma_txreq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca void (%struct.sdma_txreq*, i32)*, align 8
  store %struct.sdma_txreq* %0, %struct.sdma_txreq** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store void (%struct.sdma_txreq*, i32)* %7, void (%struct.sdma_txreq*, i32)** %17, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load i32, i32* @ENODATA, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %125

23:                                               ; preds = %8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @MAX_SDMA_PKT_SIZE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %125

30:                                               ; preds = %23
  %31 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %32 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %33)
  %35 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %36 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %38 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %42 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %41, i32 0, i32 9
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %44 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %43, i32 0, i32 8
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %47 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %50 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %49, i32 0, i32 6
  store i64 %48, i64* %50, align 8
  %51 = load void (%struct.sdma_txreq*, i32)*, void (%struct.sdma_txreq*, i32)** %17, align 8
  %52 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %53 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %52, i32 0, i32 0
  store void (%struct.sdma_txreq*, i32)* %51, void (%struct.sdma_txreq*, i32)** %53, align 8
  %54 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %55 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %54, i32 0, i32 5
  store i32* null, i32** %55, align 8
  %56 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %57 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %60 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %62 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %65 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @SDMA_DESC0_FIRST_DESC_FLAG, align 4
  %67 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %68 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %66, i32* %73, align 4
  %74 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %75 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 0, i32* %80, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @SDMA_TXREQ_F_AHG_COPY, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %30
  %86 = load i64, i64* %13, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i64, i64* @SDMA_AHG_COPY, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @SDMA_DESC1_HEADER_MODE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @SDMA_DESC1_HEADER_MODE_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %91, %97
  %99 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %100 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %98
  store i32 %107, i32* %105, align 4
  br label %124

108:                                              ; preds = %30
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @SDMA_TXREQ_F_USE_AHG, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.sdma_txreq*, %struct.sdma_txreq** %10, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i64, i64* %16, align 8
  %122 = call i32 @_sdma_txreq_ahgadd(%struct.sdma_txreq* %117, i64 %118, i64 %119, i32* %120, i64 %121)
  br label %123

123:                                              ; preds = %116, %113, %108
  br label %124

124:                                              ; preds = %123, %85
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %124, %27, %20
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @_sdma_txreq_ahgadd(%struct.sdma_txreq*, i64, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
