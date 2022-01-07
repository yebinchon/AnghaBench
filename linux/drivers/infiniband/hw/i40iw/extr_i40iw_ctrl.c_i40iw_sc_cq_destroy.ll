; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cq = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32, i32 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_DESTROY_CQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_VIRTMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_ENCEQEMASK = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQIDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CQ_DESTROY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cq*, i32, i32)* @i40iw_sc_cq_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cq_destroy(%struct.i40iw_sc_cq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_sc_cqp*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_cq* %0, %struct.i40iw_sc_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %11, i32 0, i32 9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
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
  br label %134

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @set_64bit_val(i32* %24, i32 0, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %32 = call i32 @RS_64_1(%struct.i40iw_sc_cq* %31, i32 1)
  %33 = call i32 @set_64bit_val(i32* %30, i32 8, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %36 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @set_64bit_val(i32* %34, i32 40, i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %41 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %46 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  %51 = call i32 @set_64bit_val(i32* %39, i32 48, i32 %50)
  %52 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %53 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %57 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %62 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  br label %65

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  %67 = load i32, i32* @I40IW_CQPSQ_CQ_CEQID, align 4
  %68 = call i32 @LS_64(i32 %66, i32 %67)
  %69 = or i32 %55, %68
  %70 = load i32, i32* @I40IW_CQP_OP_DESTROY_CQ, align 4
  %71 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %72 = call i32 @LS_64(i32 %70, i32 %71)
  %73 = or i32 %69, %72
  %74 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %75 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @I40IW_CQPSQ_CQ_LPBLSIZE, align 4
  %78 = call i32 @LS_64(i32 %76, i32 %77)
  %79 = or i32 %73, %78
  %80 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %81 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @I40IW_CQPSQ_CQ_VIRTMAP, align 4
  %84 = call i32 @LS_64(i32 %82, i32 %83)
  %85 = or i32 %79, %84
  %86 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %87 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @I40IW_CQPSQ_CQ_ENCEQEMASK, align 4
  %90 = call i32 @LS_64(i32 %88, i32 %89)
  %91 = or i32 %85, %90
  %92 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %93 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I40IW_CQPSQ_CQ_CEQIDVALID, align 4
  %96 = call i32 @LS_64(i32 %94, i32 %95)
  %97 = or i32 %91, %96
  %98 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %99 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %102 = call i32 @LS_64(i32 %100, i32 %101)
  %103 = or i32 %97, %102
  %104 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %105 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT, align 4
  %109 = call i32 @LS_64(i32 %107, i32 %108)
  %110 = or i32 %103, %109
  %111 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %112 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %115 = call i32 @LS_64(i32 %113, i32 %114)
  %116 = or i32 %110, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @i40iw_insert_wqe_hdr(i32* %117, i32 %118)
  %120 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %121 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %126 = mul nsw i32 %125, 8
  %127 = call i32 @i40iw_debug_buf(i32 %122, i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %124, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %65
  %131 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %8, align 8
  %132 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %131)
  br label %133

133:                                              ; preds = %130, %65
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %21
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @RS_64_1(%struct.i40iw_sc_cq*, i32) #1

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
