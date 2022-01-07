; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_set_hmc_resource_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_set_hmc_resource_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_SHMCRP_HMC_PROFILE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_SHMCRP_VFNUM = common dso_local global i32 0, align 4
@I40IW_CQP_OP_SET_HMC_RESOURCE_PROFILE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MANAGE_HMC_PM_FUNC_TABLE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4
@I40IW_CQP_OP_SHMC_PAGES_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i32, i32, i32, i32, i32)* @i40iw_sc_set_hmc_resource_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_set_hmc_resource_profile(%struct.i40iw_sc_cqp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_sc_cqp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
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
  br label %82

27:                                               ; preds = %6
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @I40IW_CQPSQ_SHMCRP_HMC_PROFILE, align 4
  %31 = call i32 @LS_64(i32 %29, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @I40IW_CQPSQ_SHMCRP_VFNUM, align 4
  %34 = call i32 @LS_64(i32 %32, i32 %33)
  %35 = or i32 %31, %34
  %36 = call i32 @set_64bit_val(i32* %28, i32 16, i32 %35)
  %37 = load i32, i32* @I40IW_CQP_OP_SET_HMC_RESOURCE_PROFILE, align 4
  %38 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %39 = call i32 @LS_64(i32 %37, i32 %38)
  %40 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %41 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %44 = call i32 @LS_64(i32 %42, i32 %43)
  %45 = or i32 %39, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @i40iw_insert_wqe_hdr(i32* %46, i32 %47)
  %49 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %50 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %55 = mul nsw i32 %54, 8
  %56 = call i32 @i40iw_debug_buf(i32 %51, i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %53, i32 %55)
  %57 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %58 = call i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp* %57, i64* %16, i64* %17, i64* %18)
  %59 = load i64, i64* %18, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %27
  %62 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %62, i32* %7, align 4
  br label %82

63:                                               ; preds = %27
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %68 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp* %72, i64 %73, i32 1000000)
  store i32 %74, i32* %19, align 4
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %77 = load i32, i32* @I40IW_CQP_OP_SHMC_PAGES_ALLOCATED, align 4
  %78 = call i32 @i40iw_sc_poll_for_cqp_op_done(%struct.i40iw_sc_cqp* %76, i32 %77, i32* null)
  store i32 %78, i32* %19, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32, i32* %19, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %61, %25
  %83 = load i32, i32* %7, align 4
  ret i32 %83
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
