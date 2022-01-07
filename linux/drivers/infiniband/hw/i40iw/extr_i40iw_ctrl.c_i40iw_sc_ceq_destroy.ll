; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ceq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ceq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_ceq = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_DESTROY_CEQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CEQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CEQ_VMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CEQ_DESTROY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_ceq*, i32, i32)* @i40iw_sc_ceq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_ceq_destroy(%struct.i40iw_sc_ceq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_ceq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_sc_cqp*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_ceq* %0, %struct.i40iw_sc_ceq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %14, align 8
  store %struct.i40iw_sc_cqp* %15, %struct.i40iw_sc_cqp** %8, align 8
  %16 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %16, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_64bit_val(i32* %24, i32 16, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_64bit_val(i32* %29, i32 48, i32 %32)
  %34 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I40IW_CQP_OP_DESTROY_CEQ, align 4
  %38 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %39 = call i32 @LS_64(i32 %37, i32 %38)
  %40 = or i32 %36, %39
  %41 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I40IW_CQPSQ_CEQ_LPBLSIZE, align 4
  %45 = call i32 @LS_64(i32 %43, i32 %44)
  %46 = or i32 %40, %45
  %47 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %48 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I40IW_CQPSQ_CEQ_VMAP, align 4
  %51 = call i32 @LS_64(i32 %49, i32 %50)
  %52 = or i32 %46, %51
  %53 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %54 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %57 = call i32 @LS_64(i32 %55, i32 %56)
  %58 = or i32 %52, %57
  %59 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %60 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %63 = call i32 @LS_64(i32 %61, i32 %62)
  %64 = or i32 %58, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @i40iw_insert_wqe_hdr(i32* %65, i32 %66)
  %68 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %69 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %74 = mul nsw i32 %73, 8
  %75 = call i32 @i40iw_debug_buf(i32 %70, i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %72, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %23
  %79 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %80 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %79)
  br label %81

81:                                               ; preds = %78, %23
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
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
