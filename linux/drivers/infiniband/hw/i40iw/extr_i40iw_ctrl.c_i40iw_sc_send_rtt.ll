; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_send_rtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_send_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, %struct.i40iw_qp_uk }
%struct.i40iw_qp_uk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@I40IWQPSQ_REMSTAG = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_READ = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_WRITE = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"RTR WQE\00", align 1
@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_qp*, i32)* @i40iw_sc_send_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_sc_send_rtt(%struct.i40iw_sc_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_qp_uk*, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %8, i32 0, i32 1
  store %struct.i40iw_qp_uk* %9, %struct.i40iw_qp_uk** %7, align 8
  %10 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %7, align 8
  %11 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @set_64bit_val(i32* %15, i32 0, i32 0)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @set_64bit_val(i32* %17, i32 8, i32 0)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @set_64bit_val(i32* %19, i32 16, i32 0)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load i32, i32* @I40IWQPSQ_REMSTAG, align 4
  %25 = call i32 @LS_64(i32 4660, i32 %24)
  %26 = load i32, i32* @I40IWQP_OP_RDMA_READ, align 4
  %27 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %28 = call i32 @LS_64(i32 %26, i32 %27)
  %29 = or i32 %25, %28
  %30 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %35 = call i32 @LS_64(i32 %33, i32 %34)
  %36 = or i32 %29, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @set_64bit_val(i32* %37, i32 8, i32 undef)
  br label %50

39:                                               ; preds = %2
  %40 = load i32, i32* @I40IWQP_OP_RDMA_WRITE, align 4
  %41 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %42 = call i32 @LS_64(i32 %40, i32 %41)
  %43 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %48 = call i32 @LS_64(i32 %46, i32 %47)
  %49 = or i32 %42, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %39, %23
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @i40iw_insert_wqe_hdr(i32* %51, i32 %52)
  %54 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %55 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %60 = call i32 @i40iw_debug_buf(i32 %56, i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %58, i32 %59)
  ret void
}

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
