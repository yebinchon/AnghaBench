; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_aeq = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_DESTROY_AEQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_AEQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_AEQ_VMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AEQ_DESTROY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_aeq*, i32, i32)* @i40iw_sc_aeq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_aeq_destroy(%struct.i40iw_sc_aeq* %0, i32 %1, i32 %2) #0 {
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
  %12 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %11, i32 0, i32 4
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
  br label %72

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_64bit_val(i32* %24, i32 16, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_64bit_val(i32* %29, i32 48, i32 %32)
  %34 = load i32, i32* @I40IW_CQP_OP_DESTROY_AEQ, align 4
  %35 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %36 = call i32 @LS_64(i32 %34, i32 %35)
  %37 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I40IW_CQPSQ_AEQ_LPBLSIZE, align 4
  %41 = call i32 @LS_64(i32 %39, i32 %40)
  %42 = or i32 %36, %41
  %43 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @I40IW_CQPSQ_AEQ_VMAP, align 4
  %47 = call i32 @LS_64(i32 %45, i32 %46)
  %48 = or i32 %42, %47
  %49 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %50 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %53 = call i32 @LS_64(i32 %51, i32 %52)
  %54 = or i32 %48, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @i40iw_insert_wqe_hdr(i32* %55, i32 %56)
  %58 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %64 = mul nsw i32 %63, 8
  %65 = call i32 @i40iw_debug_buf(i32 %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %62, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %23
  %69 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %70 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %69)
  br label %71

71:                                               ; preds = %68, %23
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

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
