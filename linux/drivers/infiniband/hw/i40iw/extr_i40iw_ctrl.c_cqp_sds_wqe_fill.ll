; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_cqp_sds_wqe_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_cqp_sds_wqe_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32, %struct.i40iw_dma_mem }
%struct.i40iw_dma_mem = type { i64, i64 }
%struct.i40iw_update_sds_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_UPDATE_PE_SDS = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UPESD_ENTRY_COUNT = common dso_local global i32 0, align 4
@I40IW_UPDATE_SD_BUF_SIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UPESD_HMCFNID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UPESD_SDCMD = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UPESD_ENTRY_VALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"UPDATE_PE_SDS WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, %struct.i40iw_update_sds_info*, i32)* @cqp_sds_wqe_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqp_sds_wqe_fill(%struct.i40iw_sc_cqp* %0, %struct.i40iw_update_sds_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_cqp*, align 8
  %6 = alloca %struct.i40iw_update_sds_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40iw_dma_mem*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %5, align 8
  store %struct.i40iw_update_sds_info* %1, %struct.i40iw_update_sds_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %16, i32 0, i32 2
  store %struct.i40iw_dma_mem* %17, %struct.i40iw_dma_mem** %13, align 8
  %18 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @i40iw_sc_cqp_get_next_send_wqe_idx(%struct.i40iw_sc_cqp* %18, i32 %19, i32* %15)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %24, i32* %4, align 4
  br label %172

25:                                               ; preds = %3
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @I40IW_CQP_INIT_WQE(i32* %26)
  %28 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %29 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %35 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi i32 [ 3, %32 ], [ %36, %33 ]
  store i32 %38, i32* %12, align 4
  %39 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %40 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @I40IW_CQP_OP_UPDATE_PE_SDS, align 4
  %45 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %46 = call i32 @LS_64(i32 %44, i32 %45)
  %47 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %48 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %51 = call i32 @LS_64(i32 %49, i32 %50)
  %52 = or i32 %46, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @I40IW_CQPSQ_UPESD_ENTRY_COUNT, align 4
  %55 = call i32 @LS_64(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %37
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @I40IW_UPDATE_SD_BUF_SIZE, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %13, align 8
  %64 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %71 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 3
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 4
  %76 = call i32 @memcpy(i8* %69, %struct.TYPE_2__* %73, i32 %75)
  %77 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %13, align 8
  %78 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  br label %84

83:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %86 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @I40IW_CQPSQ_UPESD_HMCFNID, align 4
  %89 = call i32 @LS_64(i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @set_64bit_val(i32* %92, i32 16, i32 %93)
  %95 = load i32, i32* %12, align 4
  switch i32 %95, label %159 [
    i32 3, label %96
    i32 2, label %118
    i32 1, label %140
  ]

96:                                               ; preds = %84
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %99 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @I40IW_CQPSQ_UPESD_SDCMD, align 4
  %105 = call i32 @LS_64(i32 %103, i32 %104)
  %106 = load i32, i32* @I40IW_CQPSQ_UPESD_ENTRY_VALID, align 4
  %107 = call i32 @LS_64(i32 1, i32 %106)
  %108 = or i32 %105, %107
  %109 = call i32 @set_64bit_val(i32* %97, i32 48, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %112 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @set_64bit_val(i32* %110, i32 56, i32 %116)
  br label %118

118:                                              ; preds = %84, %96
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %121 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @I40IW_CQPSQ_UPESD_SDCMD, align 4
  %127 = call i32 @LS_64(i32 %125, i32 %126)
  %128 = load i32, i32* @I40IW_CQPSQ_UPESD_ENTRY_VALID, align 4
  %129 = call i32 @LS_64(i32 1, i32 %128)
  %130 = or i32 %127, %129
  %131 = call i32 @set_64bit_val(i32* %119, i32 32, i32 %130)
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %134 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @set_64bit_val(i32* %132, i32 40, i32 %138)
  br label %140

140:                                              ; preds = %84, %118
  %141 = load i32*, i32** %10, align 8
  %142 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %143 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %142, i32 0, i32 2
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @I40IW_CQPSQ_UPESD_SDCMD, align 4
  %149 = call i32 @LS_64(i32 %147, i32 %148)
  %150 = call i32 @set_64bit_val(i32* %141, i32 0, i32 %149)
  %151 = load i32*, i32** %10, align 8
  %152 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %6, align 8
  %153 = getelementptr inbounds %struct.i40iw_update_sds_info, %struct.i40iw_update_sds_info* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @set_64bit_val(i32* %151, i32 8, i32 %157)
  br label %160

159:                                              ; preds = %84
  br label %160

160:                                              ; preds = %159, %140
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @i40iw_insert_wqe_hdr(i32* %161, i32 %162)
  %164 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %165 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %170 = mul nsw i32 %169, 8
  %171 = call i32 @i40iw_debug_buf(i32 %166, i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %168, i32 %170)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %160, %23
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe_idx(%struct.i40iw_sc_cqp*, i32, i32*) #1

declare dso_local i32 @I40IW_CQP_INIT_WQE(i32*) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
