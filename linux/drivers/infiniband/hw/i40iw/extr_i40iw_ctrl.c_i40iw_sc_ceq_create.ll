; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ceq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_ceq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_ceq = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHVAL = common dso_local global i32 0, align 4
@I40IW_CQP_OP_CREATE_CEQ = common dso_local global i64 0, align 8
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CEQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CEQ_VMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CEQ_CREATE WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_ceq*, i32, i32)* @i40iw_sc_ceq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_ceq_create(%struct.i40iw_sc_ceq* %0, i32 %1, i32 %2) #0 {
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
  %12 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %11, i32 0, i32 8
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
  br label %110

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @set_64bit_val(i32* %24, i32 16, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  %36 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi i32 [ 0, %34 ], [ %38, %35 ]
  %41 = call i32 @set_64bit_val(i32* %29, i32 32, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %49 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = call i32 @set_64bit_val(i32* %42, i32 48, i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %57 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @I40IW_CQPSQ_TPHVAL, align 4
  %60 = call i32 @LS_64(i64 %58, i32 %59)
  %61 = call i32 @set_64bit_val(i32* %55, i32 56, i32 %60)
  %62 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %63 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @I40IW_CQP_OP_CREATE_CEQ, align 8
  %66 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %67 = call i32 @LS_64(i64 %65, i32 %66)
  %68 = or i32 %64, %67
  %69 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %70 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @I40IW_CQPSQ_CEQ_LPBLSIZE, align 4
  %73 = call i32 @LS_64(i64 %71, i32 %72)
  %74 = or i32 %68, %73
  %75 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %76 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @I40IW_CQPSQ_CEQ_VMAP, align 4
  %79 = call i32 @LS_64(i64 %77, i32 %78)
  %80 = or i32 %74, %79
  %81 = load %struct.i40iw_sc_ceq*, %struct.i40iw_sc_ceq** %5, align 8
  %82 = getelementptr inbounds %struct.i40iw_sc_ceq, %struct.i40iw_sc_ceq* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %85 = call i32 @LS_64(i64 %83, i32 %84)
  %86 = or i32 %80, %85
  %87 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %88 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %91 = call i32 @LS_64(i64 %89, i32 %90)
  %92 = or i32 %86, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @i40iw_insert_wqe_hdr(i32* %93, i32 %94)
  %96 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %97 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %102 = mul nsw i32 %101, 8
  %103 = call i32 @i40iw_debug_buf(i32 %98, i32 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %100, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %52
  %107 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %108 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %107)
  br label %109

109:                                              ; preds = %106, %52
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %21
  %111 = load i32, i32* %4, align 4
  ret i32 %111
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
