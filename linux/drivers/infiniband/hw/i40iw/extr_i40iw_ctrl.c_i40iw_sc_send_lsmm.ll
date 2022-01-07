; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_send_lsmm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_send_lsmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, %struct.i40iw_qp_uk }
%struct.i40iw_qp_uk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@I40IWQPSQ_FRAG_STAG = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_SEND = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_STREAMMODE = common dso_local global i32 0, align 4
@I40IWQPSQ_WAITFORRCVPDU = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SEND_LSMM WQE\00", align 1
@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_qp*, i8*, i64, i32)* @i40iw_sc_send_lsmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_sc_send_lsmm(%struct.i40iw_sc_qp* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i40iw_sc_qp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40iw_qp_uk*, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %12, i32 0, i32 1
  store %struct.i40iw_qp_uk* %13, %struct.i40iw_qp_uk** %11, align 8
  %14 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %11, align 8
  %15 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %9, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = call i32 @set_64bit_val(i64* %19, i32 0, i64 %21)
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I40IWQPSQ_FRAG_STAG, align 4
  %27 = call i64 @LS_64(i32 %25, i32 %26)
  %28 = or i64 %24, %27
  %29 = call i32 @set_64bit_val(i64* %23, i32 8, i64 %28)
  %30 = load i64*, i64** %9, align 8
  %31 = call i32 @set_64bit_val(i64* %30, i32 16, i64 0)
  %32 = load i32, i32* @I40IWQP_OP_RDMA_SEND, align 4
  %33 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %34 = call i64 @LS_64(i32 %32, i32 %33)
  %35 = load i32, i32* @I40IWQPSQ_STREAMMODE, align 4
  %36 = call i64 @LS_64(i32 1, i32 %35)
  %37 = or i64 %34, %36
  %38 = load i32, i32* @I40IWQPSQ_WAITFORRCVPDU, align 4
  %39 = call i64 @LS_64(i32 1, i32 %38)
  %40 = or i64 %37, %39
  %41 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %46 = call i64 @LS_64(i32 %44, i32 %45)
  %47 = or i64 %40, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @i40iw_insert_wqe_hdr(i64* %48, i64 %49)
  %51 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %52 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I40IW_DEBUG_QP, align 4
  %55 = load i64*, i64** %9, align 8
  %56 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %57 = call i32 @i40iw_debug_buf(i32 %53, i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %55, i32 %56)
  ret void
}

declare dso_local i32 @set_64bit_val(i64*, i32, i64) #1

declare dso_local i64 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i64*, i64) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
