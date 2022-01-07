; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_manage_push_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_manage_push_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i64, i32 }
%struct.i40iw_cqp_manage_push_page_info = type { i64, i64, i32 }

@I40IW_MAX_PUSH_PAGE_COUNT = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PUSH_PAGE_INDEX = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MPP_PPIDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_PUSH_PAGES = common dso_local global i64 0, align 8
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_MPP_FREE_PAGE = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MANAGE_PUSH_PAGES WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, %struct.i40iw_cqp_manage_push_page_info*, i32, i32)* @i40iw_sc_manage_push_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_manage_push_page(%struct.i40iw_sc_cqp* %0, %struct.i40iw_cqp_manage_push_page_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca %struct.i40iw_cqp_manage_push_page_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %6, align 8
  store %struct.i40iw_cqp_manage_push_page_info* %1, %struct.i40iw_cqp_manage_push_page_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.i40iw_cqp_manage_push_page_info*, %struct.i40iw_cqp_manage_push_page_info** %7, align 8
  %13 = getelementptr inbounds %struct.i40iw_cqp_manage_push_page_info, %struct.i40iw_cqp_manage_push_page_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @I40IW_MAX_PUSH_PAGE_COUNT, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @I40IW_ERR_INVALID_PUSH_PAGE_INDEX, align 4
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %4
  %20 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %26, i32* %5, align 4
  br label %71

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.i40iw_cqp_manage_push_page_info*, %struct.i40iw_cqp_manage_push_page_info** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_cqp_manage_push_page_info, %struct.i40iw_cqp_manage_push_page_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_64bit_val(i32* %28, i32 16, i32 %31)
  %33 = load %struct.i40iw_cqp_manage_push_page_info*, %struct.i40iw_cqp_manage_push_page_info** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_cqp_manage_push_page_info, %struct.i40iw_cqp_manage_push_page_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @I40IW_CQPSQ_MPP_PPIDX, align 4
  %37 = call i32 @LS_64(i64 %35, i32 %36)
  %38 = load i64, i64* @I40IW_CQP_OP_MANAGE_PUSH_PAGES, align 8
  %39 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %40 = call i32 @LS_64(i64 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %43 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %46 = call i32 @LS_64(i64 %44, i32 %45)
  %47 = or i32 %41, %46
  %48 = load %struct.i40iw_cqp_manage_push_page_info*, %struct.i40iw_cqp_manage_push_page_info** %7, align 8
  %49 = getelementptr inbounds %struct.i40iw_cqp_manage_push_page_info, %struct.i40iw_cqp_manage_push_page_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @I40IW_CQPSQ_MPP_FREE_PAGE, align 4
  %52 = call i32 @LS_64(i64 %50, i32 %51)
  %53 = or i32 %47, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @i40iw_insert_wqe_hdr(i32* %54, i32 %55)
  %57 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %58 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %63 = mul nsw i32 %62, 8
  %64 = call i32 @i40iw_debug_buf(i32 %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %61, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %27
  %68 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %69 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %68)
  br label %70

70:                                               ; preds = %67, %27
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %25, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
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
