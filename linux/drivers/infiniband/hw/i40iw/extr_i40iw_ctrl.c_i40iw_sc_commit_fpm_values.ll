; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_commit_fpm_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_commit_fpm_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_dma_mem = type { i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_COMMIT_FPM_VALUES = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"COMMIT_FPM_VALUES WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4
@I40IW_CQP_WAIT_POLL_REGS = common dso_local global i64 0, align 8
@I40IW_DONE_COUNT = common dso_local global i32 0, align 4
@I40IW_CQP_WAIT_POLL_CQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i32, i64, %struct.i40iw_dma_mem*, i32, i64)* @i40iw_sc_commit_fpm_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_commit_fpm_values(%struct.i40iw_sc_cqp* %0, i32 %1, i64 %2, %struct.i40iw_dma_mem* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_sc_cqp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40iw_dma_mem*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.i40iw_dma_mem* %3, %struct.i40iw_dma_mem** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %20, i32 %21)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %26, i32* %7, align 4
  br label %87

27:                                               ; preds = %6
  %28 = load i32*, i32** %14, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @set_64bit_val(i32* %28, i32 16, i64 %29)
  %31 = load i32*, i32** %14, align 8
  %32 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %11, align 8
  %33 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @set_64bit_val(i32* %31, i32 32, i64 %34)
  %36 = load i32, i32* @I40IW_CQP_OP_COMMIT_FPM_VALUES, align 4
  %37 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %38 = call i32 @LS_64(i32 %36, i32 %37)
  %39 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %43 = call i32 @LS_64(i32 %41, i32 %42)
  %44 = or i32 %38, %43
  store i32 %44, i32* %15, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @i40iw_insert_wqe_hdr(i32* %45, i32 %46)
  %48 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %49 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %54 = mul nsw i32 %53, 8
  %55 = call i32 @i40iw_debug_buf(i32 %50, i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %52, i32 %54)
  %56 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %57 = call i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp* %56, i64* %17, i64* %16, i64* %18)
  %58 = load i64, i64* %18, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %27
  %61 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %61, i32* %7, align 4
  br label %87

62:                                               ; preds = %27
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %67 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %66)
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @I40IW_CQP_WAIT_POLL_REGS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i32, i32* @I40IW_DONE_COUNT, align 4
  %75 = call i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp* %72, i64 %73, i32 %74)
  store i32 %75, i32* %19, align 4
  br label %84

76:                                               ; preds = %65
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @I40IW_CQP_WAIT_POLL_CQ, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %82 = call i32 @i40iw_sc_commit_fpm_values_done(%struct.i40iw_sc_cqp* %81)
  store i32 %82, i32* %19, align 4
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %62
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %60, %25
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i64) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp*, i64*, i64*, i64*) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

declare dso_local i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp*, i64, i32) #1

declare dso_local i32 @i40iw_sc_commit_fpm_values_done(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
