; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_mw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_mw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_PDID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_IDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_ALLOC_STAG = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"MW_ALLOC WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, i32, i32, i32, i32)* @i40iw_sc_mw_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_mw_alloc(%struct.i40iw_sc_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i40iw_sc_cqp*, align 8
  %14 = alloca i32*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %15, i32 0, i32 0
  %17 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %16, align 8
  store %struct.i40iw_sc_cqp* %17, %struct.i40iw_sc_cqp** %13, align 8
  %18 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %18, i32 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %5
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @I40IW_CQPSQ_STAG_PDID, align 4
  %29 = call i32 @LS_64(i32 %27, i32 %28)
  %30 = call i32 @set_64bit_val(i32* %26, i32 8, i32 %29)
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @I40IW_CQPSQ_STAG_IDX, align 4
  %34 = call i32 @LS_64(i32 %32, i32 %33)
  %35 = call i32 @set_64bit_val(i32* %31, i32 16, i32 %34)
  %36 = load i32, i32* @I40IW_CQP_OP_ALLOC_STAG, align 4
  %37 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %38 = call i32 @LS_64(i32 %36, i32 %37)
  %39 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %43 = call i32 @LS_64(i32 %41, i32 %42)
  %44 = or i32 %38, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @i40iw_insert_wqe_hdr(i32* %45, i32 %46)
  %48 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %7, align 8
  %49 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %52 = mul nsw i32 %51, 8
  %53 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %48, i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %50, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %25
  %57 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %58 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %57)
  br label %59

59:                                               ; preds = %56, %25
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %6, align 4
  ret i32 %61
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
