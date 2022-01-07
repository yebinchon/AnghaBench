; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_flush_wqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_flush_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_qp_flush_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_RQMNERR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_RQMJERR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_SQMNERR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_SQMJERR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_AESOURCE = common dso_local global i32 0, align 4
@I40IW_CQP_OP_FLUSH_WQES = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_GENERATE_AE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_USERFLCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_FLUSHSQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_FLUSHRQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"QP_FLUSH WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_qp*, %struct.i40iw_qp_flush_info*, i32, i32)* @i40iw_sc_qp_flush_wqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_qp_flush_wqes(%struct.i40iw_sc_qp* %0, %struct.i40iw_qp_flush_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca %struct.i40iw_qp_flush_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i40iw_sc_cqp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %6, align 8
  store %struct.i40iw_qp_flush_info* %1, %struct.i40iw_qp_flush_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %17 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 1, i32* %15, align 4
  br label %26

26:                                               ; preds = %25, %20, %4
  %27 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %28 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %33 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %31, %26
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %45 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %184

54:                                               ; preds = %50, %37
  %55 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %56 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %60, align 8
  store %struct.i40iw_sc_cqp* %61, %struct.i40iw_sc_cqp** %12, align 8
  %62 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %62, i32 %63)
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %68, i32* %5, align 4
  br label %184

69:                                               ; preds = %54
  %70 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %71 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %69
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %79 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @I40IW_CQPSQ_FWQE_RQMNERR, align 4
  %82 = call i32 @LS_64(i32 %80, i32 %81)
  %83 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %84 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @I40IW_CQPSQ_FWQE_RQMJERR, align 4
  %87 = call i32 @LS_64(i32 %85, i32 %86)
  %88 = or i32 %82, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %77, %74
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %96 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @I40IW_CQPSQ_FWQE_SQMNERR, align 4
  %99 = call i32 @LS_64(i32 %97, i32 %98)
  %100 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %101 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @I40IW_CQPSQ_FWQE_SQMJERR, align 4
  %104 = call i32 @LS_64(i32 %102, i32 %103)
  %105 = or i32 %99, %104
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %94, %91
  br label %109

109:                                              ; preds = %108, %69
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @set_64bit_val(i32* %110, i32 16, i32 %111)
  %113 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %114 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %109
  %118 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %119 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %122 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @I40IW_CQPSQ_FWQE_AESOURCE, align 4
  %125 = call i32 @LS_64(i32 %123, i32 %124)
  %126 = or i32 %120, %125
  br label %128

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %117
  %129 = phi i32 [ %126, %117 ], [ 0, %127 ]
  store i32 %129, i32* %10, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @set_64bit_val(i32* %130, i32 8, i32 %131)
  %133 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %134 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @I40IW_CQP_OP_FLUSH_WQES, align 4
  %138 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %139 = call i32 @LS_64(i32 %137, i32 %138)
  %140 = or i32 %136, %139
  %141 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %142 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @I40IW_CQPSQ_FWQE_GENERATE_AE, align 4
  %145 = call i32 @LS_64(i32 %143, i32 %144)
  %146 = or i32 %140, %145
  %147 = load %struct.i40iw_qp_flush_info*, %struct.i40iw_qp_flush_info** %7, align 8
  %148 = getelementptr inbounds %struct.i40iw_qp_flush_info, %struct.i40iw_qp_flush_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @I40IW_CQPSQ_FWQE_USERFLCODE, align 4
  %151 = call i32 @LS_64(i32 %149, i32 %150)
  %152 = or i32 %146, %151
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @I40IW_CQPSQ_FWQE_FLUSHSQ, align 4
  %155 = call i32 @LS_64(i32 %153, i32 %154)
  %156 = or i32 %152, %155
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @I40IW_CQPSQ_FWQE_FLUSHRQ, align 4
  %159 = call i32 @LS_64(i32 %157, i32 %158)
  %160 = or i32 %156, %159
  %161 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %162 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %165 = call i32 @LS_64(i32 %163, i32 %164)
  %166 = or i32 %160, %165
  store i32 %166, i32* %13, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @i40iw_insert_wqe_hdr(i32* %167, i32 %168)
  %170 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %171 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %176 = mul nsw i32 %175, 8
  %177 = call i32 @i40iw_debug_buf(i32 %172, i32 %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %174, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %128
  %181 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %182 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %181)
  br label %183

183:                                              ; preds = %180, %128
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %67, %53
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
