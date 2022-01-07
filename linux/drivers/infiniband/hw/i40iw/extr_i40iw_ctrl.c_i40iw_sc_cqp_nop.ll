; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cqp_nop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cqp_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_NOP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NOP WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, i32, i32)* @i40iw_sc_cqp_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cqp_nop(%struct.i40iw_sc_cqp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_cqp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %10, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* @I40IW_CQP_OP_NOP, align 4
  %19 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %20 = call i32 @LS_64(i32 %18, i32 %19)
  %21 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %25 = call i32 @LS_64(i32 %23, i32 %24)
  %26 = or i32 %20, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @i40iw_insert_wqe_hdr(i32* %27, i32 %28)
  %30 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %36 = mul nsw i32 %35, 8
  %37 = call i32 @i40iw_debug_buf(i32 %32, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %34, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %5, align 8
  %42 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %41)
  br label %43

43:                                               ; preds = %40, %17
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
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
