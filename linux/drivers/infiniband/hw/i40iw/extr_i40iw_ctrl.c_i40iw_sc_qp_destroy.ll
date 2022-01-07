; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_qp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_DESTROY_QP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_QPTYPE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_IGNOREMWBOUND = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_REMOVEHASHENTRY = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"QP_DESTROY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_qp*, i32, i32, i32, i32)* @i40iw_sc_qp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_qp_destroy(%struct.i40iw_sc_qp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_sc_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.i40iw_sc_cqp*, align 8
  %14 = alloca i32, align 4
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %16 = call i32 @i40iw_qp_rem_qos(%struct.i40iw_sc_qp* %15)
  %17 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %18 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %22, align 8
  store %struct.i40iw_sc_cqp* %23, %struct.i40iw_sc_cqp** %13, align 8
  %24 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %24, i32 %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %30, i32* %6, align 4
  br label %87

31:                                               ; preds = %5
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_64bit_val(i32* %32, i32 16, i32 %35)
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %39 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_64bit_val(i32* %37, i32 40, i32 %40)
  %42 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %43 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I40IW_CQP_OP_DESTROY_QP, align 4
  %47 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %48 = call i32 @LS_64(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  %50 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %7, align 8
  %51 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @I40IW_CQPSQ_QP_QPTYPE, align 4
  %54 = call i32 @LS_64(i32 %52, i32 %53)
  %55 = or i32 %49, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @I40IW_CQPSQ_QP_IGNOREMWBOUND, align 4
  %58 = call i32 @LS_64(i32 %56, i32 %57)
  %59 = or i32 %55, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @I40IW_CQPSQ_QP_REMOVEHASHENTRY, align 4
  %62 = call i32 @LS_64(i32 %60, i32 %61)
  %63 = or i32 %59, %62
  %64 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %65 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %68 = call i32 @LS_64(i32 %66, i32 %67)
  %69 = or i32 %63, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @i40iw_insert_wqe_hdr(i32* %70, i32 %71)
  %73 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %74 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %79 = mul nsw i32 %78, 8
  %80 = call i32 @i40iw_debug_buf(i32 %75, i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %77, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %31
  %84 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %13, align 8
  %85 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %84)
  br label %86

86:                                               ; preds = %83, %31
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %29
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @i40iw_qp_rem_qos(%struct.i40iw_sc_qp*) #1

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
