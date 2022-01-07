; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_inline_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_inline_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, i64, i64 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40iw_post_inline_send }
%struct.i40iw_post_inline_send = type { i32, i64 }

@I40IW_MAX_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_REMSTAG = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_INLINEDATALEN = common dso_local global i32 0, align 4
@I40IWQPSQ_INLINEDATAFLAG = common dso_local global i32 0, align 4
@I40IWQPSQ_PUSHWQE = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i32, i32)* @i40iw_inline_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_inline_send(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_qp_uk*, align 8
  %7 = alloca %struct.i40iw_post_sq_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.i40iw_post_inline_send*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %6, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %21 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.i40iw_post_inline_send* %22, %struct.i40iw_post_inline_send** %13, align 8
  %23 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %24 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I40IW_MAX_INLINE_DATA_SIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @I40IW_ERR_INVALID_INLINE_DATA_SIZE, align 4
  store i32 %29, i32* %5, align 4
  br label %184

30:                                               ; preds = %4
  %31 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %32 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @i40iw_inline_data_size_to_wqesize(i32 %33, i32* %18)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %5, align 4
  br label %184

39:                                               ; preds = %30
  %40 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %43 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %40, i32* %15, i32 %41, i32 %44, i32 %47)
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %52, i32* %5, align 4
  br label %184

53:                                               ; preds = %39
  %54 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %55 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @I40IWQPSQ_REMSTAG, align 4
  %61 = call i32 @LS_64(i32 %59, i32 %60)
  %62 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %63 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %66 = call i32 @LS_64(i32 %64, i32 %65)
  %67 = or i32 %61, %66
  %68 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %69 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @I40IWQPSQ_INLINEDATALEN, align 4
  %72 = call i32 @LS_64(i32 %70, i32 %71)
  %73 = or i32 %67, %72
  %74 = load i32, i32* @I40IWQPSQ_INLINEDATAFLAG, align 4
  %75 = call i32 @LS_64(i32 1, i32 %74)
  %76 = or i32 %73, %75
  %77 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %78 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load i32, i32* @I40IWQPSQ_PUSHWQE, align 4
  %84 = call i32 @LS_64(i32 %82, i32 %83)
  %85 = or i32 %76, %84
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %88 = call i32 @LS_64(i32 %86, i32 %87)
  %89 = or i32 %85, %88
  %90 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %91 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %94 = call i32 @LS_64(i32 %92, i32 %93)
  %95 = or i32 %89, %94
  %96 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %97 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %100 = call i32 @LS_64(i32 %98, i32 %99)
  %101 = or i32 %95, %100
  %102 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %103 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %106 = call i32 @LS_64(i32 %104, i32 %105)
  %107 = or i32 %101, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %10, align 8
  store i32* %108, i32** %11, align 8
  %109 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %110 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %12, align 8
  %113 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %114 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sle i32 %115, 16
  br i1 %116, label %117, label %124

117:                                              ; preds = %53
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %121 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memcpy(i32* %118, i32* %119, i32 %122)
  br label %139

124:                                              ; preds = %53
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @memcpy(i32* %125, i32* %126, i32 16)
  %128 = load i32*, i32** %12, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 16
  store i32* %129, i32** %12, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 32
  store i32* %131, i32** %11, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %135 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 16
  %138 = call i32 @memcpy(i32* %132, i32* %133, i32 %137)
  br label %139

139:                                              ; preds = %124, %117
  %140 = call i32 (...) @wmb()
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @set_64bit_val(i32* %141, i32 24, i32 %142)
  %144 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %145 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %139
  %149 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %150 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = and i32 %152, 3
  %154 = mul nsw i32 %153, 32
  %155 = sext i32 %154 to i64
  %156 = add i64 %151, %155
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %19, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %161 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp sgt i32 %162, 16
  br i1 %163, label %164, label %169

164:                                              ; preds = %148
  %165 = load %struct.i40iw_post_inline_send*, %struct.i40iw_post_inline_send** %13, align 8
  %166 = getelementptr inbounds %struct.i40iw_post_inline_send, %struct.i40iw_post_inline_send* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 16
  br label %170

169:                                              ; preds = %148
  br label %170

170:                                              ; preds = %169, %164
  %171 = phi i32 [ %168, %164 ], [ 32, %169 ]
  %172 = call i32 @memcpy(i32* %158, i32* %159, i32 %171)
  %173 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @i40iw_qp_ring_push_db(%struct.i40iw_qp_uk* %173, i32 %174)
  br label %183

176:                                              ; preds = %139
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %181 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %180)
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %182, %170
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %51, %37, %28
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @i40iw_inline_data_size_to_wqesize(i32, i32*) #1

declare dso_local i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i32*, i32, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_qp_ring_push_db(%struct.i40iw_qp_uk*, i32) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
