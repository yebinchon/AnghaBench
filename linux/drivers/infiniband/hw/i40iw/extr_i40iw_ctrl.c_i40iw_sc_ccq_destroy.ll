; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ccq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ccq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cq = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_DESTROY_CQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_ENCEQEMASK = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQIDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CCQ_DESTROY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4
@i40iw_update_sds_noccq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cq*, i32, i32)* @i40iw_sc_ccq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_ccq_destroy(%struct.i40iw_sc_cq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_sc_cqp*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40iw_sc_cq* %0, %struct.i40iw_sc_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %18, align 8
  store %struct.i40iw_sc_cqp* %19, %struct.i40iw_sc_cqp** %8, align 8
  %20 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %20, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %26, i32* %4, align 4
  br label %127

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %30 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_64bit_val(i32* %28, i32 0, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %36 = call i32 @RS_64_1(%struct.i40iw_sc_cq* %35, i32 1)
  %37 = call i32 @set_64bit_val(i32* %34, i32 8, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_64bit_val(i32* %38, i32 40, i32 %41)
  %43 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %48 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %27
  %52 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %53 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  %58 = load i32, i32* @I40IW_CQPSQ_CQ_CEQID, align 4
  %59 = call i32 @LS_64(i32 %57, i32 %58)
  %60 = or i32 %46, %59
  %61 = load i32, i32* @I40IW_CQP_OP_DESTROY_CQ, align 4
  %62 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %63 = call i32 @LS_64(i32 %61, i32 %62)
  %64 = or i32 %60, %63
  %65 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %66 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I40IW_CQPSQ_CQ_ENCEQEMASK, align 4
  %69 = call i32 @LS_64(i32 %67, i32 %68)
  %70 = or i32 %64, %69
  %71 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %72 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @I40IW_CQPSQ_CQ_CEQIDVALID, align 4
  %75 = call i32 @LS_64(i32 %73, i32 %74)
  %76 = or i32 %70, %75
  %77 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %78 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %81 = call i32 @LS_64(i32 %79, i32 %80)
  %82 = or i32 %76, %81
  %83 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %84 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT, align 4
  %88 = call i32 @LS_64(i32 %86, i32 %87)
  %89 = or i32 %82, %88
  %90 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %91 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %94 = call i32 @LS_64(i32 %92, i32 %93)
  %95 = or i32 %89, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @i40iw_insert_wqe_hdr(i32* %96, i32 %97)
  %99 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %100 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %105 = mul nsw i32 %104, 8
  %106 = call i32 @i40iw_debug_buf(i32 %101, i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %103, i32 %105)
  %107 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %108 = call i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp* %107, i64* %13, i64* %12, i64* %14)
  %109 = load i64, i64* %14, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %56
  %112 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %112, i32* %4, align 4
  br label %127

113:                                              ; preds = %56
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %118 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %117)
  %119 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp* %119, i64 %120, i32 1000)
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %116, %113
  %123 = load i32, i32* @i40iw_update_sds_noccq, align 4
  %124 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %125 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %122, %111, %25
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @RS_64_1(%struct.i40iw_sc_cq*, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp*, i64*, i64*, i64*) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

declare dso_local i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
