; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_cq_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_cq_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp*, %struct.TYPE_4__* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.i40iw_sc_cqp*, i32, %struct.i40iw_ccq_cqe_info*)* }
%struct.i40iw_ccq_cqe_info = type { i32 }
%struct.i40iw_sc_cq = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD = common dso_local global i32 0, align 4
@I40IW_CQP_OP_CREATE_CQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CHKOVERFLOW = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_ENCEQEMASK = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQIDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_PUDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PUDA CQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_sc_cq*)* @i40iw_puda_cq_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_puda_cq_wqe(%struct.i40iw_sc_dev* %0, %struct.i40iw_sc_cq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i40iw_sc_cqp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_ccq_cqe_info, align 4
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_sc_cq* %1, %struct.i40iw_sc_cq** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 0
  %13 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  store %struct.i40iw_sc_cqp* %13, %struct.i40iw_sc_cqp** %7, align 8
  %14 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %15 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %14, i32 0)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %19, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_64bit_val(i32* %21, i32 0, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %29 = call i32 @RS_64_1(%struct.i40iw_sc_cq* %28, i32 1)
  %30 = call i32 @set_64bit_val(i32* %27, i32 8, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %33 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD, align 4
  %36 = call i32 @LS_64(i32 %34, i32 %35)
  %37 = call i32 @set_64bit_val(i32* %31, i32 16, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_64bit_val(i32* %38, i32 32, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %45 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_64bit_val(i32* %43, i32 40, i32 %46)
  %48 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %49 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_CQP_OP_CREATE_CQ, align 4
  %53 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %54 = call i32 @LS_64(i32 %52, i32 %53)
  %55 = or i32 %51, %54
  %56 = load i32, i32* @I40IW_CQPSQ_CQ_CHKOVERFLOW, align 4
  %57 = call i32 @LS_64(i32 1, i32 %56)
  %58 = or i32 %55, %57
  %59 = load i32, i32* @I40IW_CQPSQ_CQ_ENCEQEMASK, align 4
  %60 = call i32 @LS_64(i32 1, i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* @I40IW_CQPSQ_CQ_CEQIDVALID, align 4
  %63 = call i32 @LS_64(i32 1, i32 %62)
  %64 = or i32 %61, %63
  %65 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  %66 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %69 = call i32 @LS_64(i32 %67, i32 %68)
  %70 = or i32 %64, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @i40iw_insert_wqe_hdr(i32* %71, i32 %72)
  %74 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %75 = load i32, i32* @I40IW_DEBUG_PUDA, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %78 = mul nsw i32 %77, 8
  %79 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %74, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %76, i32 %78)
  %80 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %81 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %80, i32 0, i32 0
  %82 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %81, align 8
  %83 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %82)
  %84 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.i40iw_sc_cqp*, i32, %struct.i40iw_ccq_cqe_info*)*, i32 (%struct.i40iw_sc_cqp*, i32, %struct.i40iw_ccq_cqe_info*)** %87, align 8
  %89 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %90 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %89, i32 0, i32 0
  %91 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %90, align 8
  %92 = load i32, i32* @I40IW_CQP_OP_CREATE_CQ, align 4
  %93 = call i32 %88(%struct.i40iw_sc_cqp* %91, i32 %92, %struct.i40iw_ccq_cqe_info* %9)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %20, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @RS_64_1(%struct.i40iw_sc_cq*, i32) #1

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
