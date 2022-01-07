; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_manage_hmc_pm_func_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_manage_hmc_pm_func_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_MAX_VF_PER_PF = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_VF_ID = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MHMC_VFIDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_HMC_PM_FUNC_TABLE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MHMC_FREEPMFN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MANAGE_HMC_PM_FUNC_TABLE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i32, i64, i32, i32)* @i40iw_sc_manage_hmc_pm_func_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_manage_hmc_pm_func_table(%struct.i40iw_sc_cqp* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_cqp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @I40IW_MAX_VF_PER_PF, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @I40IW_ERR_INVALID_VF_ID, align 4
  store i32 %18, i32* %6, align 4
  br label %63

19:                                               ; preds = %5
  %20 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %20, i32 %21)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %26, i32* %6, align 4
  br label %63

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @I40IW_CQPSQ_MHMC_VFIDX, align 4
  %31 = call i32 @LS_64(i32 %29, i32 %30)
  %32 = load i32, i32* @I40IW_CQP_OP_MANAGE_HMC_PM_FUNC_TABLE, align 4
  %33 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %34 = call i32 @LS_64(i32 %32, i32 %33)
  %35 = or i32 %31, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @I40IW_CQPSQ_MHMC_FREEPMFN, align 4
  %38 = call i32 @LS_64(i32 %36, i32 %37)
  %39 = or i32 %35, %38
  %40 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %41 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %44 = call i32 @LS_64(i32 %42, i32 %43)
  %45 = or i32 %39, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @i40iw_insert_wqe_hdr(i32* %46, i32 %47)
  %49 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %50 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %55 = mul nsw i32 %54, 8
  %56 = call i32 @i40iw_debug_buf(i32 %51, i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %53, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %27
  %60 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %61 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %60)
  br label %62

62:                                               ; preds = %59, %27
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %25, %17
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

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
