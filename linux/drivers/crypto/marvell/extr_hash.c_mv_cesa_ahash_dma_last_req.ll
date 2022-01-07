; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_dma_last_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_dma_last_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_op_ctx = type { i32 }
%struct.mv_cesa_tdma_chain = type { i32 }
%struct.mv_cesa_ahash_dma_iter = type { i32 }
%struct.mv_cesa_ahash_req = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mv_cesa_ahash_dma_req }
%struct.mv_cesa_ahash_dma_req = type { i64, i32 }

@CESA_SA_DESC_MAC_SRC_TOTAL_LEN_MAX = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_NOT_FRAG = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_LAST_FRAG = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_FRAG_MSK = common dso_local global i32 0, align 4
@CESA_SA_CFG_SRAM_OFFSET = common dso_local global i32 0, align 4
@CESA_SA_DATA_SRAM_OFFSET = common dso_local global i64 0, align 8
@CESA_TDMA_SRC_IN_SRAM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CESA_SA_SRAM_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@CESA_TDMA_DST_IN_SRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mv_cesa_op_ctx* (%struct.mv_cesa_tdma_chain*, %struct.mv_cesa_ahash_dma_iter*, %struct.mv_cesa_ahash_req*, i32, i32)* @mv_cesa_ahash_dma_last_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mv_cesa_op_ctx* @mv_cesa_ahash_dma_last_req(%struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_ahash_dma_iter* %1, %struct.mv_cesa_ahash_req* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mv_cesa_op_ctx*, align 8
  %7 = alloca %struct.mv_cesa_tdma_chain*, align 8
  %8 = alloca %struct.mv_cesa_ahash_dma_iter*, align 8
  %9 = alloca %struct.mv_cesa_ahash_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mv_cesa_ahash_dma_req*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mv_cesa_op_ctx*, align 8
  %17 = alloca i32, align 4
  store %struct.mv_cesa_tdma_chain* %0, %struct.mv_cesa_tdma_chain** %7, align 8
  store %struct.mv_cesa_ahash_dma_iter* %1, %struct.mv_cesa_ahash_dma_iter** %8, align 8
  store %struct.mv_cesa_ahash_req* %2, %struct.mv_cesa_ahash_req** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.mv_cesa_ahash_dma_req* %20, %struct.mv_cesa_ahash_dma_req** %12, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %22 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CESA_SA_DESC_MAC_SRC_TOTAL_LEN_MAX, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %31 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %32 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.mv_cesa_tdma_chain* %30, i32* %32, i32 %33, i32 %34)
  store %struct.mv_cesa_op_ctx* %35, %struct.mv_cesa_op_ctx** %16, align 8
  %36 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  %37 = call i64 @IS_ERR(%struct.mv_cesa_op_ctx* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  store %struct.mv_cesa_op_ctx* %40, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

41:                                               ; preds = %29
  %42 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  %43 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mv_cesa_set_mac_op_total_len(%struct.mv_cesa_op_ctx* %42, i32 %45)
  %47 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  %48 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  %49 = call i64 @mv_cesa_mac_op_is_first_frag(%struct.mv_cesa_op_ctx* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @CESA_SA_DESC_CFG_NOT_FRAG, align 4
  br label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @CESA_SA_DESC_CFG_LAST_FRAG, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i32, i32* @CESA_SA_DESC_CFG_FRAG_MSK, align 4
  %58 = call i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx* %47, i32 %56, i32 %57)
  %59 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %60 = load i32, i32* @CESA_SA_CFG_SRAM_OFFSET, align 4
  %61 = load i64, i64* @CESA_SA_DATA_SRAM_OFFSET, align 8
  %62 = load i32, i32* @CESA_TDMA_SRC_IN_SRAM, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @mv_cesa_dma_add_result_op(%struct.mv_cesa_tdma_chain* %59, i32 %60, i64 %61, i32 %62, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.mv_cesa_op_ctx* @ERR_PTR(i32 %69)
  store %struct.mv_cesa_op_ctx* %70, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

71:                                               ; preds = %55
  %72 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  store %struct.mv_cesa_op_ctx* %72, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

73:                                               ; preds = %26, %5
  %74 = load %struct.mv_cesa_ahash_dma_req*, %struct.mv_cesa_ahash_dma_req** %12, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @mv_cesa_ahash_dma_alloc_padding(%struct.mv_cesa_ahash_dma_req* %74, i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %17, align 4
  %81 = call %struct.mv_cesa_op_ctx* @ERR_PTR(i32 %80)
  store %struct.mv_cesa_op_ctx* %81, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

82:                                               ; preds = %73
  %83 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %84 = load %struct.mv_cesa_ahash_dma_req*, %struct.mv_cesa_ahash_dma_req** %12, align 8
  %85 = getelementptr inbounds %struct.mv_cesa_ahash_dma_req, %struct.mv_cesa_ahash_dma_req* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mv_cesa_ahash_pad_req(%struct.mv_cesa_ahash_req* %83, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i64, i64* @CESA_SA_SRAM_PAYLOAD_SIZE, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @min(i64 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %138

96:                                               ; preds = %82
  %97 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %98 = load i64, i64* @CESA_SA_DATA_SRAM_OFFSET, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load %struct.mv_cesa_ahash_dma_req*, %struct.mv_cesa_ahash_dma_req** %12, align 8
  %103 = getelementptr inbounds %struct.mv_cesa_ahash_dma_req, %struct.mv_cesa_ahash_dma_req* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @CESA_TDMA_DST_IN_SRAM, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @mv_cesa_dma_add_data_transfer(%struct.mv_cesa_tdma_chain* %97, i64 %101, i64 %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load i32, i32* %17, align 4
  %113 = call %struct.mv_cesa_op_ctx* @ERR_PTR(i32 %112)
  store %struct.mv_cesa_op_ctx* %113, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

114:                                              ; preds = %96
  %115 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %116 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %117 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %116, i32 0, i32 0
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.mv_cesa_tdma_chain* %115, i32* %117, i32 %120, i32 %121)
  store %struct.mv_cesa_op_ctx* %122, %struct.mv_cesa_op_ctx** %16, align 8
  %123 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  %124 = call i64 @IS_ERR(%struct.mv_cesa_op_ctx* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  store %struct.mv_cesa_op_ctx* %127, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

128:                                              ; preds = %114
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %16, align 8
  store %struct.mv_cesa_op_ctx* %133, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

134:                                              ; preds = %128
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %134, %82
  %139 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %140 = load i64, i64* @CESA_SA_DATA_SRAM_OFFSET, align 8
  %141 = load %struct.mv_cesa_ahash_dma_req*, %struct.mv_cesa_ahash_dma_req** %12, align 8
  %142 = getelementptr inbounds %struct.mv_cesa_ahash_dma_req, %struct.mv_cesa_ahash_dma_req* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub i32 %147, %148
  %150 = load i32, i32* @CESA_TDMA_DST_IN_SRAM, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @mv_cesa_dma_add_data_transfer(%struct.mv_cesa_tdma_chain* %139, i64 %140, i64 %146, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %138
  %156 = load i32, i32* %17, align 4
  %157 = call %struct.mv_cesa_op_ctx* @ERR_PTR(i32 %156)
  store %struct.mv_cesa_op_ctx* %157, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

158:                                              ; preds = %138
  %159 = load %struct.mv_cesa_tdma_chain*, %struct.mv_cesa_tdma_chain** %7, align 8
  %160 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %9, align 8
  %161 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %160, i32 0, i32 0
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = sub i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.mv_cesa_tdma_chain* %159, i32* %161, i32 %164, i32 %165)
  store %struct.mv_cesa_op_ctx* %166, %struct.mv_cesa_op_ctx** %6, align 8
  br label %167

167:                                              ; preds = %158, %155, %132, %126, %111, %79, %71, %67, %39
  %168 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %6, align 8
  ret %struct.mv_cesa_op_ctx* %168
}

declare dso_local %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.mv_cesa_tdma_chain*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @mv_cesa_set_mac_op_total_len(%struct.mv_cesa_op_ctx*, i32) #1

declare dso_local i32 @mv_cesa_update_op_cfg(%struct.mv_cesa_op_ctx*, i32, i32) #1

declare dso_local i64 @mv_cesa_mac_op_is_first_frag(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @mv_cesa_dma_add_result_op(%struct.mv_cesa_tdma_chain*, i32, i64, i32, i32) #1

declare dso_local %struct.mv_cesa_op_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @mv_cesa_ahash_dma_alloc_padding(%struct.mv_cesa_ahash_dma_req*, i32) #1

declare dso_local i32 @mv_cesa_ahash_pad_req(%struct.mv_cesa_ahash_req*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @mv_cesa_dma_add_data_transfer(%struct.mv_cesa_tdma_chain*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
