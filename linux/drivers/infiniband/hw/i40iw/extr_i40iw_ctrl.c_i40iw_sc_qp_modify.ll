; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i64, i32 }
%struct.i40iw_modify_qp_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_QP_STATE_TERMINATE = common dso_local global i64 0, align 8
@I40IWQP_TERM_SEND_TERM_ONLY = common dso_local global i64 0, align 8
@I40IWQP_TERM_SEND_FIN_ONLY = common dso_local global i64 0, align 8
@I40IWQP_TERM_SEND_TERM_AND_FIN = common dso_local global i64 0, align 8
@I40IW_CQPSQ_QP_TERMLEN = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MODIFY_QP = common dso_local global i64 0, align 8
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_ORDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_TOECTXVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_CACHEDVARVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_VQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_CQNUMVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_FORCELOOPBACK = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_QPTYPE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_REMOVEHASHENTRY = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_TERMACT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_RESETCON = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_ARPTABIDXVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_NEXTIWSTATE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"QP_MODIFY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_qp*, %struct.i40iw_modify_qp_info*, i32, i32)* @i40iw_sc_qp_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_qp_modify(%struct.i40iw_sc_qp* %0, %struct.i40iw_modify_qp_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca %struct.i40iw_modify_qp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_sc_cqp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %6, align 8
  store %struct.i40iw_modify_qp_info* %1, %struct.i40iw_modify_qp_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %15, i32 0, i32 5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %20, align 8
  store %struct.i40iw_sc_cqp* %21, %struct.i40iw_sc_cqp** %11, align 8
  %22 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %22, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %28, i32* %5, align 4
  br label %183

29:                                               ; preds = %4
  %30 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %31 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @I40IW_QP_STATE_TERMINATE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %37 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* @I40IWQP_TERM_SEND_TERM_ONLY, align 8
  %42 = load i64, i64* %13, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @I40IWQP_TERM_SEND_FIN_ONLY, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @I40IWQP_TERM_SEND_TERM_AND_FIN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @I40IWQP_TERM_SEND_TERM_ONLY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %53
  %62 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %63 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %29
  %67 = load i32*, i32** %10, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* @I40IW_CQPSQ_QP_TERMLEN, align 4
  %70 = call i32 @LS_64(i64 %68, i32 %69)
  %71 = call i32 @set_64bit_val(i32* %67, i32 8, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @set_64bit_val(i32* %72, i32 16, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %79 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_64bit_val(i32* %77, i32 40, i32 %80)
  %82 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %83 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* @I40IW_CQP_OP_MODIFY_QP, align 8
  %87 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %88 = call i32 @LS_64(i64 %86, i32 %87)
  %89 = or i32 %85, %88
  %90 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %91 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @I40IW_CQPSQ_QP_ORDVALID, align 4
  %94 = call i32 @LS_64(i64 %92, i32 %93)
  %95 = or i32 %89, %94
  %96 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %97 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @I40IW_CQPSQ_QP_TOECTXVALID, align 4
  %100 = call i32 @LS_64(i64 %98, i32 %99)
  %101 = or i32 %95, %100
  %102 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %103 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @I40IW_CQPSQ_QP_CACHEDVARVALID, align 4
  %106 = call i32 @LS_64(i64 %104, i32 %105)
  %107 = or i32 %101, %106
  %108 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %109 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @I40IW_CQPSQ_QP_VQ, align 4
  %112 = call i32 @LS_64(i64 %110, i32 %111)
  %113 = or i32 %107, %112
  %114 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %115 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @I40IW_CQPSQ_QP_CQNUMVALID, align 4
  %118 = call i32 @LS_64(i64 %116, i32 %117)
  %119 = or i32 %113, %118
  %120 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %121 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @I40IW_CQPSQ_QP_FORCELOOPBACK, align 4
  %124 = call i32 @LS_64(i64 %122, i32 %123)
  %125 = or i32 %119, %124
  %126 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %127 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @I40IW_CQPSQ_QP_QPTYPE, align 4
  %130 = call i32 @LS_64(i64 %128, i32 %129)
  %131 = or i32 %125, %130
  %132 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %133 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @I40IW_CQPSQ_QP_REMOVEHASHENTRY, align 4
  %136 = call i32 @LS_64(i64 %134, i32 %135)
  %137 = or i32 %131, %136
  %138 = load i64, i64* %13, align 8
  %139 = load i32, i32* @I40IW_CQPSQ_QP_TERMACT, align 4
  %140 = call i32 @LS_64(i64 %138, i32 %139)
  %141 = or i32 %137, %140
  %142 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %143 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @I40IW_CQPSQ_QP_RESETCON, align 4
  %146 = call i32 @LS_64(i64 %144, i32 %145)
  %147 = or i32 %141, %146
  %148 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %149 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @I40IW_CQPSQ_QP_ARPTABIDXVALID, align 4
  %152 = call i32 @LS_64(i64 %150, i32 %151)
  %153 = or i32 %147, %152
  %154 = load %struct.i40iw_modify_qp_info*, %struct.i40iw_modify_qp_info** %7, align 8
  %155 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @I40IW_CQPSQ_QP_NEXTIWSTATE, align 4
  %158 = call i32 @LS_64(i64 %156, i32 %157)
  %159 = or i32 %153, %158
  %160 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %161 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %164 = call i32 @LS_64(i64 %162, i32 %163)
  %165 = or i32 %159, %164
  store i32 %165, i32* %12, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @i40iw_insert_wqe_hdr(i32* %166, i32 %167)
  %169 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %170 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %175 = mul nsw i32 %174, 8
  %176 = call i32 @i40iw_debug_buf(i32 %171, i32 %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %173, i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %66
  %180 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %181 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %180)
  br label %182

182:                                              ; preds = %179, %66
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %27
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i64, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
