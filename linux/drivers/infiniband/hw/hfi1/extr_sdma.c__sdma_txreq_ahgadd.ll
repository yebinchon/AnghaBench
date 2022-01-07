; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__sdma_txreq_ahgadd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__sdma_txreq_ahgadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_txreq = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@SDMA_AHG_APPLY_UPDATE1 = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_INDEX_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_INDEX_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_DWS_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_DWS_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_UPDATE1_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_UPDATE1_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_sdma_txreq_ahgadd(%struct.sdma_txreq* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sdma_txreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sdma_txreq* %0, %struct.sdma_txreq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 9
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 4
  br label %24

24:                                               ; preds = %21, %17, %5
  %25 = phi i1 [ true, %17 ], [ true, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @SDMA_AHG_APPLY_UPDATE1, align 4
  store i32 %31, i32* %14, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 5
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 129, i32* %14, align 4
  br label %37

36:                                               ; preds = %32
  store i32 128, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %40 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %14, align 4
  switch i32 %43, label %82 [
    i32 128, label %44
    i32 129, label %63
  ]

44:                                               ; preds = %38
  %45 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %46 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %50 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %57 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %38, %44
  %64 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %65 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %69 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %76 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %38, %63
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 2
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @SDMA_DESC1_HEADER_DWS_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @SDMA_DESC1_HEADER_DWS_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %89, %94
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @SDMA_DESC1_HEADER_MODE_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @SDMA_DESC1_HEADER_MODE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %95, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SDMA_DESC1_HEADER_UPDATE1_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @SDMA_DESC1_HEADER_UPDATE1_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %101, %108
  %110 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %111 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %109
  store i32 %118, i32* %116, align 4
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %164, %82
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %167

124:                                              ; preds = %119
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  %129 = and i32 %128, 2
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131, %127, %124
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %12, align 4
  %142 = shl i32 %140, %141
  %143 = load %struct.sdma_txreq*, %struct.sdma_txreq** %6, align 8
  %144 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, 2
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %150, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %142
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 32
  %163 = and i32 %162, 63
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %134
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %119

167:                                              ; preds = %119
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
