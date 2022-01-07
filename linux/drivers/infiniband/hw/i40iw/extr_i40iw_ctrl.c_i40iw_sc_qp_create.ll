; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_create_qp_info = type { i32, i32, i32, i32, i64 }

@I40IW_MIN_IW_QP_ID = common dso_local global i32 0, align 4
@I40IW_MAX_IW_QP_ID = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_QP_ID = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_CREATE_QP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_ORDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_TOECTXVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_QPTYPE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_VQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_CQNUMVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_ARPTABIDXVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_NEXTIWSTATE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"QP_CREATE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_qp*, %struct.i40iw_create_qp_info*, i32, i32)* @i40iw_sc_qp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_qp_create(%struct.i40iw_sc_qp* %0, %struct.i40iw_create_qp_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca %struct.i40iw_create_qp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_sc_cqp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %6, align 8
  store %struct.i40iw_create_qp_info* %1, %struct.i40iw_create_qp_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I40IW_MIN_IW_QP_ID, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %21 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I40IW_MAX_IW_QP_ID, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19, %4
  %27 = load i32, i32* @I40IW_ERR_INVALID_QP_ID, align 4
  store i32 %27, i32* %5, align 4
  br label %130

28:                                               ; preds = %19
  %29 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %30 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %29, i32 0, i32 5
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %34, align 8
  store %struct.i40iw_sc_cqp* %35, %struct.i40iw_sc_cqp** %10, align 8
  %36 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %36, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %42, i32* %5, align 4
  br label %130

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %46 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @set_64bit_val(i32* %44, i32 16, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_64bit_val(i32* %49, i32 40, i32 %52)
  %54 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %55 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I40IW_CQP_OP_CREATE_QP, align 4
  %59 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %60 = call i32 @LS_64(i32 %58, i32 %59)
  %61 = or i32 %57, %60
  %62 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %7, align 8
  %63 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = load i32, i32* @I40IW_CQPSQ_QP_ORDVALID, align 4
  %69 = call i32 @LS_64(i32 %67, i32 %68)
  %70 = or i32 %61, %69
  %71 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %7, align 8
  %72 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @I40IW_CQPSQ_QP_TOECTXVALID, align 4
  %75 = call i32 @LS_64(i32 %73, i32 %74)
  %76 = or i32 %70, %75
  %77 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %78 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I40IW_CQPSQ_QP_QPTYPE, align 4
  %81 = call i32 @LS_64(i32 %79, i32 %80)
  %82 = or i32 %76, %81
  %83 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %84 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @I40IW_CQPSQ_QP_VQ, align 4
  %87 = call i32 @LS_64(i32 %85, i32 %86)
  %88 = or i32 %82, %87
  %89 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %7, align 8
  %90 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @I40IW_CQPSQ_QP_CQNUMVALID, align 4
  %93 = call i32 @LS_64(i32 %91, i32 %92)
  %94 = or i32 %88, %93
  %95 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %7, align 8
  %96 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @I40IW_CQPSQ_QP_ARPTABIDXVALID, align 4
  %99 = call i32 @LS_64(i32 %97, i32 %98)
  %100 = or i32 %94, %99
  %101 = load %struct.i40iw_create_qp_info*, %struct.i40iw_create_qp_info** %7, align 8
  %102 = getelementptr inbounds %struct.i40iw_create_qp_info, %struct.i40iw_create_qp_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @I40IW_CQPSQ_QP_NEXTIWSTATE, align 4
  %105 = call i32 @LS_64(i32 %103, i32 %104)
  %106 = or i32 %100, %105
  %107 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %108 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %111 = call i32 @LS_64(i32 %109, i32 %110)
  %112 = or i32 %106, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @i40iw_insert_wqe_hdr(i32* %113, i32 %114)
  %116 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %117 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %122 = mul nsw i32 %121, 8
  %123 = call i32 @i40iw_debug_buf(i32 %118, i32 %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %120, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %43
  %127 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %128 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %127)
  br label %129

129:                                              ; preds = %126, %43
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %41, %26
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
