; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_aeq = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_CREATE_AEQ = common dso_local global i64 0, align 8
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_AEQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_AEQ_VMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AEQ_CREATE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_aeq*, i32, i32)* @i40iw_sc_aeq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_aeq_create(%struct.i40iw_sc_aeq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_aeq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40iw_sc_cqp*, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_aeq* %0, %struct.i40iw_sc_aeq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %14, align 8
  store %struct.i40iw_sc_cqp* %15, %struct.i40iw_sc_cqp** %9, align 8
  %16 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %16, i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %22, i32* %4, align 4
  br label %93

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @set_64bit_val(i32* %24, i32 16, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi i32 [ 0, %34 ], [ %38, %35 ]
  %41 = call i32 @set_64bit_val(i32* %29, i32 32, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %49 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = call i32 @set_64bit_val(i32* %42, i32 48, i32 %53)
  %55 = load i64, i64* @I40IW_CQP_OP_CREATE_AEQ, align 8
  %56 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %57 = call i32 @LS_64(i64 %55, i32 %56)
  %58 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @I40IW_CQPSQ_AEQ_LPBLSIZE, align 4
  %62 = call i32 @LS_64(i64 %60, i32 %61)
  %63 = or i32 %57, %62
  %64 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @I40IW_CQPSQ_AEQ_VMAP, align 4
  %68 = call i32 @LS_64(i64 %66, i32 %67)
  %69 = or i32 %63, %68
  %70 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %71 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %74 = call i32 @LS_64(i64 %72, i32 %73)
  %75 = or i32 %69, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @i40iw_insert_wqe_hdr(i32* %76, i32 %77)
  %79 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %80 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %85 = mul nsw i32 %84, 8
  %86 = call i32 @i40iw_debug_buf(i32 %81, i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %83, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %52
  %90 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %91 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %90)
  br label %92

92:                                               ; preds = %89, %52
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
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
