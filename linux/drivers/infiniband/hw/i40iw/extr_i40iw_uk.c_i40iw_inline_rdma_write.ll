; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_inline_rdma_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_inline_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, i64, i64 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i40iw_inline_rdma_write }
%struct.i40iw_inline_rdma_write = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@I40IW_MAX_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_FRAG_TO = common dso_local global i32 0, align 4
@I40IWQPSQ_REMSTAG = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_WRITE = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_INLINEDATALEN = common dso_local global i32 0, align 4
@I40IWQPSQ_INLINEDATAFLAG = common dso_local global i32 0, align 4
@I40IWQPSQ_PUSHWQE = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i32)* @i40iw_inline_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_inline_rdma_write(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_qp_uk*, align 8
  %6 = alloca %struct.i40iw_post_sq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_inline_rdma_write*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %5, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.i40iw_inline_rdma_write* %20, %struct.i40iw_inline_rdma_write** %11, align 8
  %21 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %22 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I40IW_MAX_INLINE_DATA_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @I40IW_ERR_INVALID_INLINE_DATA_SIZE, align 4
  store i32 %27, i32* %4, align 4
  br label %191

28:                                               ; preds = %3
  %29 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %30 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @i40iw_inline_data_size_to_wqesize(i32 %31, i32* %17)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %4, align 4
  br label %191

37:                                               ; preds = %28
  %38 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %41 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %44 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %38, i32* %14, i32 %39, i32 %42, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %50, i32* %4, align 4
  br label %191

51:                                               ; preds = %37
  %52 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %53 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %16, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %59 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @I40IWQPSQ_FRAG_TO, align 4
  %63 = call i32 @LS_64(i32 %61, i32 %62)
  %64 = call i32 @set_64bit_val(i32* %57, i32 16, i32 %63)
  %65 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %66 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @I40IWQPSQ_REMSTAG, align 4
  %70 = call i32 @LS_64(i32 %68, i32 %69)
  %71 = load i32, i32* @I40IWQP_OP_RDMA_WRITE, align 4
  %72 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %73 = call i32 @LS_64(i32 %71, i32 %72)
  %74 = or i32 %70, %73
  %75 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %76 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @I40IWQPSQ_INLINEDATALEN, align 4
  %79 = call i32 @LS_64(i32 %77, i32 %78)
  %80 = or i32 %74, %79
  %81 = load i32, i32* @I40IWQPSQ_INLINEDATAFLAG, align 4
  %82 = call i32 @LS_64(i32 1, i32 %81)
  %83 = or i32 %80, %82
  %84 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %85 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load i32, i32* @I40IWQPSQ_PUSHWQE, align 4
  %91 = call i32 @LS_64(i32 %89, i32 %90)
  %92 = or i32 %83, %91
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %95 = call i32 @LS_64(i32 %93, i32 %94)
  %96 = or i32 %92, %95
  %97 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %98 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %101 = call i32 @LS_64(i32 %99, i32 %100)
  %102 = or i32 %96, %101
  %103 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %6, align 8
  %104 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %107 = call i32 @LS_64(i32 %105, i32 %106)
  %108 = or i32 %102, %107
  %109 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %110 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %113 = call i32 @LS_64(i32 %111, i32 %112)
  %114 = or i32 %108, %113
  store i32 %114, i32* %13, align 4
  %115 = load i32*, i32** %8, align 8
  store i32* %115, i32** %9, align 8
  %116 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %117 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %10, align 8
  %120 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %121 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sle i32 %122, 16
  br i1 %123, label %124, label %131

124:                                              ; preds = %51
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %128 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @memcpy(i32* %125, i32* %126, i32 %129)
  br label %146

131:                                              ; preds = %51
  %132 = load i32*, i32** %9, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @memcpy(i32* %132, i32* %133, i32 16)
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 16
  store i32* %136, i32** %10, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 32
  store i32* %138, i32** %9, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %142 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 16
  %145 = call i32 @memcpy(i32* %139, i32* %140, i32 %144)
  br label %146

146:                                              ; preds = %131, %124
  %147 = call i32 (...) @wmb()
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @set_64bit_val(i32* %148, i32 24, i32 %149)
  %151 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %152 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %183

155:                                              ; preds = %146
  %156 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %157 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = and i32 %159, 3
  %161 = mul nsw i32 %160, 32
  %162 = sext i32 %161 to i64
  %163 = add i64 %158, %162
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %12, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %168 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 16
  br i1 %170, label %171, label %176

171:                                              ; preds = %155
  %172 = load %struct.i40iw_inline_rdma_write*, %struct.i40iw_inline_rdma_write** %11, align 8
  %173 = getelementptr inbounds %struct.i40iw_inline_rdma_write, %struct.i40iw_inline_rdma_write* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 16
  br label %177

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176, %171
  %178 = phi i32 [ %175, %171 ], [ 32, %176 ]
  %179 = call i32 @memcpy(i32* %165, i32* %166, i32 %178)
  %180 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @i40iw_qp_ring_push_db(%struct.i40iw_qp_uk* %180, i32 %181)
  br label %190

183:                                              ; preds = %146
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %5, align 8
  %188 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %187)
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189, %177
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %190, %49, %35, %26
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @i40iw_inline_data_size_to_wqesize(i32, i32*) #1

declare dso_local i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @i40iw_qp_ring_push_db(%struct.i40iw_qp_uk*, i32) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
