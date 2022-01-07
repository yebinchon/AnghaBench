; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_qp_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_qp_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp*, %struct.TYPE_4__* }
%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.i40iw_sc_cqp*, i32, %struct.i40iw_ccq_cqe_info*)* }
%struct.i40iw_ccq_cqe_info = type { i32 }
%struct.i40iw_sc_qp = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_CREATE_QP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_QP_TYPE_UDA = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_QPTYPE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_CQNUMVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QP_NEXTIWSTATE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_PUDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PUDA CQE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_sc_qp*)* @i40iw_puda_qp_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_puda_qp_wqe(%struct.i40iw_sc_dev* %0, %struct.i40iw_sc_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_sc_qp*, align 8
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_ccq_cqe_info, align 4
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 0
  %13 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  store %struct.i40iw_sc_cqp* %13, %struct.i40iw_sc_cqp** %6, align 8
  %14 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %15 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %14, i32 0)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_64bit_val(i32* %21, i32 16, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %28 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_64bit_val(i32* %26, i32 40, i32 %29)
  %31 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %32 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I40IW_CQP_OP_CREATE_QP, align 4
  %36 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %37 = call i32 @LS_64(i32 %35, i32 %36)
  %38 = or i32 %34, %37
  %39 = load i32, i32* @I40IW_QP_TYPE_UDA, align 4
  %40 = load i32, i32* @I40IW_CQPSQ_QP_QPTYPE, align 4
  %41 = call i32 @LS_64(i32 %39, i32 %40)
  %42 = or i32 %38, %41
  %43 = load i32, i32* @I40IW_CQPSQ_QP_CQNUMVALID, align 4
  %44 = call i32 @LS_64(i32 1, i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* @I40IW_CQPSQ_QP_NEXTIWSTATE, align 4
  %47 = call i32 @LS_64(i32 2, i32 %46)
  %48 = or i32 %45, %47
  %49 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %50 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %53 = call i32 @LS_64(i32 %51, i32 %52)
  %54 = or i32 %48, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @i40iw_insert_wqe_hdr(i32* %55, i32 %56)
  %58 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %59 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I40IW_DEBUG_PUDA, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @i40iw_debug_buf(i32 %60, i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %62, i32 32)
  %64 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %65 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %64)
  %66 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.i40iw_sc_cqp*, i32, %struct.i40iw_ccq_cqe_info*)*, i32 (%struct.i40iw_sc_cqp*, i32, %struct.i40iw_ccq_cqe_info*)** %69, align 8
  %71 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %72 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %71, i32 0, i32 0
  %73 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %72, align 8
  %74 = load i32, i32* @I40IW_CQP_OP_CREATE_QP, align 4
  %75 = call i32 %70(%struct.i40iw_sc_cqp* %73, i32 %74, %struct.i40iw_ccq_cqe_info* %9)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %20, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
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
