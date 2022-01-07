; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_static_hmc_pages_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_static_hmc_pages_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_SHMC_PAGE_ALLOCATED_HMC_FN_ID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_SHMC_PAGES_ALLOCATED = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SHMC_PAGES_ALLOCATED WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_sc_static_hmc_pages_allocated(%struct.i40iw_sc_cqp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_cqp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %18, i32 %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %24, i32* %6, align 4
  br label %77

25:                                               ; preds = %5
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @I40IW_SHMC_PAGE_ALLOCATED_HMC_FN_ID, align 4
  %29 = call i32 @LS_64(i32 %27, i32 %28)
  %30 = call i32 @set_64bit_val(i32* %26, i32 16, i32 %29)
  %31 = load i32, i32* @I40IW_CQP_OP_SHMC_PAGES_ALLOCATED, align 4
  %32 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %33 = call i32 @LS_64(i32 %31, i32 %32)
  %34 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %38 = call i32 @LS_64(i32 %36, i32 %37)
  %39 = or i32 %33, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @i40iw_insert_wqe_hdr(i32* %40, i32 %41)
  %43 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %49 = mul nsw i32 %48, 8
  %50 = call i32 @i40iw_debug_buf(i32 %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %47, i32 %49)
  %51 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %52 = call i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp* %51, i64* %15, i64* %14, i64* %16)
  %53 = load i64, i64* %16, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %25
  %56 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %6, align 4
  br label %77

58:                                               ; preds = %25
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %63 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp* %67, i64 %68, i32 1000)
  store i32 %69, i32* %17, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %72 = load i32, i32* @I40IW_CQP_OP_SHMC_PAGES_ALLOCATED, align 4
  %73 = call i32 @i40iw_sc_poll_for_cqp_op_done(%struct.i40iw_sc_cqp* %71, i32 %72, i32* null)
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %55, %23
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp*, i64*, i64*, i64*) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

declare dso_local i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp*, i64, i32) #1

declare dso_local i32 @i40iw_sc_poll_for_cqp_op_done(%struct.i40iw_sc_cqp*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
