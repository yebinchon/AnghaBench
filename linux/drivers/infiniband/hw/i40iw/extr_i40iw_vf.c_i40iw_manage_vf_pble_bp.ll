; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_vf.c_i40iw_manage_vf_pble_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_vf.c_i40iw_manage_vf_pble_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_manage_vf_pble_info = type { i32, i32, i32, i32, i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MVPBP_PD_ENTRY_CNT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MVPBP_FIRST_PD_INX = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MVPBP_SD_INX = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MVPBP_INV_PD_ENT = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_VF_PBLE_BP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MVPBP_PD_PLPBA = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MANAGE VF_PBLE_BP WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_manage_vf_pble_bp(%struct.i40iw_sc_cqp* %0, %struct.i40iw_manage_vf_pble_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca %struct.i40iw_manage_vf_pble_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %6, align 8
  store %struct.i40iw_manage_vf_pble_info* %1, %struct.i40iw_manage_vf_pble_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %14, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %20, i32* %5, align 4
  br label %86

21:                                               ; preds = %4
  %22 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I40IW_CQPSQ_MVPBP_PD_ENTRY_CNT, align 4
  %26 = call i32 @LS_64(i32 %24, i32 %25)
  %27 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %7, align 8
  %28 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I40IW_CQPSQ_MVPBP_FIRST_PD_INX, align 4
  %31 = call i32 @LS_64(i32 %29, i32 %30)
  %32 = or i32 %26, %31
  %33 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I40IW_CQPSQ_MVPBP_SD_INX, align 4
  %37 = call i32 @LS_64(i32 %35, i32 %36)
  %38 = or i32 %32, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @set_64bit_val(i32* %39, i32 16, i32 %40)
  %42 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %7, align 8
  %43 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load i32, i32* @I40IW_CQPSQ_MVPBP_INV_PD_ENT, align 4
  %49 = call i32 @LS_64(i32 %47, i32 %48)
  %50 = load i32, i32* @I40IW_CQP_OP_MANAGE_VF_PBLE_BP, align 4
  %51 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %52 = call i32 @LS_64(i32 %50, i32 %51)
  %53 = or i32 %49, %52
  %54 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %55 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %58 = call i32 @LS_64(i32 %56, i32 %57)
  %59 = or i32 %53, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @set_64bit_val(i32* %60, i32 24, i32 %61)
  %63 = load %struct.i40iw_manage_vf_pble_info*, %struct.i40iw_manage_vf_pble_info** %7, align 8
  %64 = getelementptr inbounds %struct.i40iw_manage_vf_pble_info, %struct.i40iw_manage_vf_pble_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 3
  %67 = load i32, i32* @I40IW_CQPSQ_MVPBP_PD_PLPBA, align 4
  %68 = call i32 @LS_64(i32 %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @set_64bit_val(i32* %69, i32 32, i32 %70)
  %72 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %73 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %78 = mul nsw i32 %77, 8
  %79 = call i32 @i40iw_debug_buf(i32 %74, i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %76, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %21
  %83 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %84 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %83)
  br label %85

85:                                               ; preds = %82, %21
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
