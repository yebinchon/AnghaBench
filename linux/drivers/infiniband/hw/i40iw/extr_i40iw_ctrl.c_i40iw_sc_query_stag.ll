; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_query_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_query_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QUERYSTAG_IDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_QUERY_STAG = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"QUERY_STAG WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, i32, i32, i32)* @i40iw_sc_query_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_query_stag(%struct.i40iw_sc_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i40iw_sc_cqp*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %13, i32 0, i32 0
  %15 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %14, align 8
  store %struct.i40iw_sc_cqp* %15, %struct.i40iw_sc_cqp** %12, align 8
  %16 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %16, i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %22, i32* %5, align 4
  br label %53

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I40IW_CQPSQ_QUERYSTAG_IDX, align 4
  %27 = call i32 @LS_64(i32 %25, i32 %26)
  %28 = call i32 @set_64bit_val(i32* %24, i32 16, i32 %27)
  %29 = load i32, i32* @I40IW_CQP_OP_QUERY_STAG, align 4
  %30 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %31 = call i32 @LS_64(i32 %29, i32 %30)
  %32 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %33 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %36 = call i32 @LS_64(i32 %34, i32 %35)
  %37 = or i32 %31, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @i40iw_insert_wqe_hdr(i32* %38, i32 %39)
  %41 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %42 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %45 = mul nsw i32 %44, 8
  %46 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %41, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %43, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %23
  %50 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %51 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %50)
  br label %52

52:                                               ; preds = %49, %23
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
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
