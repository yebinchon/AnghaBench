; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_gen_ae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_gen_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.i40iw_gen_ae_info = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_AESOURCE = common dso_local global i32 0, align 4
@I40IW_CQP_OP_GEN_AE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_FWQE_GENERATE_AE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"GEN_AE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_qp*, %struct.i40iw_gen_ae_info*, i32, i32)* @i40iw_sc_gen_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_gen_ae(%struct.i40iw_sc_qp* %0, %struct.i40iw_gen_ae_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca %struct.i40iw_gen_ae_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.i40iw_sc_cqp*, align 8
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %6, align 8
  store %struct.i40iw_gen_ae_info* %1, %struct.i40iw_gen_ae_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %19, align 8
  store %struct.i40iw_sc_cqp* %20, %struct.i40iw_sc_cqp** %12, align 8
  %21 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %21, i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %27, i32* %5, align 4
  br label %75

28:                                               ; preds = %4
  %29 = load %struct.i40iw_gen_ae_info*, %struct.i40iw_gen_ae_info** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_gen_ae_info, %struct.i40iw_gen_ae_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40iw_gen_ae_info*, %struct.i40iw_gen_ae_info** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_gen_ae_info, %struct.i40iw_gen_ae_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I40IW_CQPSQ_FWQE_AESOURCE, align 4
  %36 = call i32 @LS_64(i32 %34, i32 %35)
  %37 = or i32 %31, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @set_64bit_val(i32* %38, i32 8, i32 %39)
  %41 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %42 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I40IW_CQP_OP_GEN_AE, align 4
  %46 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %47 = call i32 @LS_64(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = load i32, i32* @I40IW_CQPSQ_FWQE_GENERATE_AE, align 4
  %50 = call i32 @LS_64(i32 1, i32 %49)
  %51 = or i32 %48, %50
  %52 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %53 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %56 = call i32 @LS_64(i32 %54, i32 %55)
  %57 = or i32 %51, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @i40iw_insert_wqe_hdr(i32* %58, i32 %59)
  %61 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %62 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %67 = mul nsw i32 %66, 8
  %68 = call i32 @i40iw_debug_buf(i32 %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %28
  %72 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %73 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %72)
  br label %74

74:                                               ; preds = %71, %28
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %26
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
