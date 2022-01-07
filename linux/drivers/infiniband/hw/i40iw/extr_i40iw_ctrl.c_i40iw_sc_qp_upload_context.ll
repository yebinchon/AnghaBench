; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_upload_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_upload_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.i40iw_upload_context_info = type { i32, i32, i32, i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UCTX_QPID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_UPLOAD_CONTEXT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UCTX_QPTYPE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UCTX_RAWFORMAT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_UCTX_FREEZEQP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"QP_UPLOAD_CTX WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_upload_context_info*, i32, i32)* @i40iw_sc_qp_upload_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_qp_upload_context(%struct.i40iw_sc_dev* %0, %struct.i40iw_upload_context_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca %struct.i40iw_upload_context_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_sc_cqp*, align 8
  %12 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store %struct.i40iw_upload_context_info* %1, %struct.i40iw_upload_context_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %13, i32 0, i32 0
  %15 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %14, align 8
  store %struct.i40iw_sc_cqp* %15, %struct.i40iw_sc_cqp** %11, align 8
  %16 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %16, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %22, i32* %5, align 4
  br label %77

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.i40iw_upload_context_info*, %struct.i40iw_upload_context_info** %7, align 8
  %26 = getelementptr inbounds %struct.i40iw_upload_context_info, %struct.i40iw_upload_context_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_64bit_val(i32* %24, i32 16, i32 %27)
  %29 = load %struct.i40iw_upload_context_info*, %struct.i40iw_upload_context_info** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_upload_context_info, %struct.i40iw_upload_context_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I40IW_CQPSQ_UCTX_QPID, align 4
  %33 = call i32 @LS_64(i32 %31, i32 %32)
  %34 = load i32, i32* @I40IW_CQP_OP_UPLOAD_CONTEXT, align 4
  %35 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %36 = call i32 @LS_64(i32 %34, i32 %35)
  %37 = or i32 %33, %36
  %38 = load %struct.i40iw_upload_context_info*, %struct.i40iw_upload_context_info** %7, align 8
  %39 = getelementptr inbounds %struct.i40iw_upload_context_info, %struct.i40iw_upload_context_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I40IW_CQPSQ_UCTX_QPTYPE, align 4
  %42 = call i32 @LS_64(i32 %40, i32 %41)
  %43 = or i32 %37, %42
  %44 = load %struct.i40iw_upload_context_info*, %struct.i40iw_upload_context_info** %7, align 8
  %45 = getelementptr inbounds %struct.i40iw_upload_context_info, %struct.i40iw_upload_context_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I40IW_CQPSQ_UCTX_RAWFORMAT, align 4
  %48 = call i32 @LS_64(i32 %46, i32 %47)
  %49 = or i32 %43, %48
  %50 = load %struct.i40iw_upload_context_info*, %struct.i40iw_upload_context_info** %7, align 8
  %51 = getelementptr inbounds %struct.i40iw_upload_context_info, %struct.i40iw_upload_context_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @I40IW_CQPSQ_UCTX_FREEZEQP, align 4
  %54 = call i32 @LS_64(i32 %52, i32 %53)
  %55 = or i32 %49, %54
  %56 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %57 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %60 = call i32 @LS_64(i32 %58, i32 %59)
  %61 = or i32 %55, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @i40iw_insert_wqe_hdr(i32* %62, i32 %63)
  %65 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %66 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %69 = mul nsw i32 %68, 8
  %70 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %65, i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %67, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %23
  %74 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %11, align 8
  %75 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %74)
  br label %76

76:                                               ; preds = %73, %23
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(%struct.i40iw_sc_dev*, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
