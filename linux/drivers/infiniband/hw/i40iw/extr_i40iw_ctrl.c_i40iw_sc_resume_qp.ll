; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_resume_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_resume_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_sc_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_RESUMEQP_QSHANDLE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_RESUMEQP_QPID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_RESUME_QP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"RESUME_QP WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_sc_resume_qp(%struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_qp* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_cqp*, align 8
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %5, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %10, i32 %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %20 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I40IW_CQPSQ_RESUMEQP_QSHANDLE, align 4
  %23 = call i32 @LS_64(i32 %21, i32 %22)
  %24 = call i32 @set_64bit_val(i32* %18, i32 16, i32 %23)
  %25 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I40IW_CQPSQ_RESUMEQP_QPID, align 4
  %30 = call i32 @LS_64(i32 %28, i32 %29)
  %31 = load i32, i32* @I40IW_CQP_OP_RESUME_QP, align 4
  %32 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %33 = call i32 @LS_64(i32 %31, i32 %32)
  %34 = or i32 %30, %33
  %35 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %36 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %39 = call i32 @LS_64(i32 %37, i32 %38)
  %40 = or i32 %34, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @i40iw_insert_wqe_hdr(i32* %41, i32 %42)
  %44 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %45 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %50 = mul nsw i32 %49, 8
  %51 = call i32 @i40iw_debug_buf(i32 %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %48, i32 %50)
  %52 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %53 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %17, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
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
