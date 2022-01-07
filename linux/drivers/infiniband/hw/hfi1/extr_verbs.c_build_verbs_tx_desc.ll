; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_build_verbs_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_build_verbs_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.verbs_txreq = type { i32, i32, i64, %struct.hfi1_sdma_header }
%struct.hfi1_sdma_header = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.hfi1_ahg_info = type { i32*, i32, i32, i32 }

@SIZE_OF_CRC = common dso_local global i32 0, align 4
@SIZE_OF_LT = common dso_local global i32 0, align 4
@verbs_sdma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*, i32, %struct.verbs_txreq*, %struct.hfi1_ahg_info*, i32)* @build_verbs_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_verbs_tx_desc(%struct.sdma_engine* %0, i32 %1, %struct.verbs_txreq* %2, %struct.hfi1_ahg_info* %3, i32 %4) #0 {
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.verbs_txreq*, align 8
  %9 = alloca %struct.hfi1_ahg_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hfi1_sdma_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.verbs_txreq* %2, %struct.verbs_txreq** %8, align 8
  store %struct.hfi1_ahg_info* %3, %struct.hfi1_ahg_info** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %16 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %15, i32 0, i32 3
  store %struct.hfi1_sdma_header* %16, %struct.hfi1_sdma_header** %12, align 8
  %17 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %18 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 1
  %22 = shl i64 %21, 2
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %25 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.hfi1_sdma_header, %struct.hfi1_sdma_header* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %5
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %31, 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @hfi1_get_16b_padding(i32 %32, i32 %33)
  %35 = load i32, i32* @SIZE_OF_CRC, align 4
  %36 = shl i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* @SIZE_OF_LT, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %30, %5
  %41 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %42 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %81, label %45

45:                                               ; preds = %40
  %46 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %47 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %46, i32 0, i32 1
  %48 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %49 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %57 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @verbs_sdma_complete, align 4
  %60 = call i32 @sdma_txinit_ahg(i32* %47, i32 %50, i32 %55, i32 %58, i32 0, i32* null, i32 0, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %135

64:                                               ; preds = %45
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @cpu_to_le64(i32 %65)
  %67 = load %struct.hfi1_sdma_header*, %struct.hfi1_sdma_header** %12, align 8
  %68 = getelementptr inbounds %struct.hfi1_sdma_header, %struct.hfi1_sdma_header* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %70 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %73 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %72, i32 0, i32 1
  %74 = load %struct.hfi1_sdma_header*, %struct.hfi1_sdma_header** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @sdma_txadd_kvaddr(%struct.TYPE_5__* %71, i32* %73, %struct.hfi1_sdma_header* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %135

80:                                               ; preds = %64
  br label %104

81:                                               ; preds = %40
  %82 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %83 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %82, i32 0, i32 1
  %84 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %85 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %89 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %92 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hfi1_ahg_info*, %struct.hfi1_ahg_info** %9, align 8
  %95 = getelementptr inbounds %struct.hfi1_ahg_info, %struct.hfi1_ahg_info* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @verbs_sdma_complete, align 4
  %99 = call i32 @sdma_txinit_ahg(i32* %83, i32 %86, i32 %87, i32 %90, i32 %93, i32* %96, i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %81
  br label %135

103:                                              ; preds = %81
  br label %104

104:                                              ; preds = %103, %80
  %105 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %106 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %113 = call i32 @build_verbs_ulp_payload(%struct.sdma_engine* %110, i32 %111, %struct.verbs_txreq* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %135

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %123 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %126 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %125, i32 0, i32 1
  %127 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %128 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @sdma_txadd_daddr(%struct.TYPE_5__* %124, i32* %126, i32 %131, i32 %132)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %121, %118
  br label %135

135:                                              ; preds = %134, %116, %102, %79, %63
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local i32 @hfi1_get_16b_padding(i32, i32) #1

declare dso_local i32 @sdma_txinit_ahg(i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @sdma_txadd_kvaddr(%struct.TYPE_5__*, i32*, %struct.hfi1_sdma_header*, i32) #1

declare dso_local i32 @build_verbs_ulp_payload(%struct.sdma_engine*, i32, %struct.verbs_txreq*) #1

declare dso_local i32 @sdma_txadd_daddr(%struct.TYPE_5__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
