; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_rdma_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_rdma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i40iw_rdma_read }
%struct.i40iw_rdma_read = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_FRAG_TO = common dso_local global i32 0, align 4
@I40IWQPSQ_REMSTAG = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_READ_LOC_INV = common dso_local global i32 0, align 4
@I40IWQP_OP_RDMA_READ = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i32, i32)* @i40iw_rdma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_rdma_read(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_qp_uk*, align 8
  %7 = alloca %struct.i40iw_post_sq_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_rdma_read*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %6, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %18 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.i40iw_rdma_read* %19, %struct.i40iw_rdma_read** %11, align 8
  %20 = call i32 @i40iw_fragcnt_to_wqesize_sq(i32 1, i32* %15)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %107

25:                                               ; preds = %4
  %26 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.i40iw_rdma_read*, %struct.i40iw_rdma_read** %11, align 8
  %29 = getelementptr inbounds %struct.i40iw_rdma_read, %struct.i40iw_rdma_read* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %26, i32* %13, i32 %27, i32 %31, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %39, i32* %5, align 4
  br label %107

40:                                               ; preds = %25
  %41 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %42 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %16, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.i40iw_rdma_read*, %struct.i40iw_rdma_read** %11, align 8
  %48 = getelementptr inbounds %struct.i40iw_rdma_read, %struct.i40iw_rdma_read* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I40IWQPSQ_FRAG_TO, align 4
  %52 = call i32 @LS_64(i32 %50, i32 %51)
  %53 = call i32 @set_64bit_val(i32* %46, i32 16, i32 %52)
  %54 = load %struct.i40iw_rdma_read*, %struct.i40iw_rdma_read** %11, align 8
  %55 = getelementptr inbounds %struct.i40iw_rdma_read, %struct.i40iw_rdma_read* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I40IWQPSQ_REMSTAG, align 4
  %59 = call i32 @LS_64(i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %40
  %63 = load i32, i32* @I40IWQP_OP_RDMA_READ_LOC_INV, align 4
  br label %66

64:                                               ; preds = %40
  %65 = load i32, i32* @I40IWQP_OP_RDMA_READ, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %69 = call i32 @LS_64(i32 %67, i32 %68)
  %70 = or i32 %59, %69
  %71 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %72 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %75 = call i32 @LS_64(i32 %73, i32 %74)
  %76 = or i32 %70, %75
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %79 = call i32 @LS_64(i32 %77, i32 %78)
  %80 = or i32 %76, %79
  %81 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %82 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %85 = call i32 @LS_64(i32 %83, i32 %84)
  %86 = or i32 %80, %85
  %87 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %88 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %91 = call i32 @LS_64(i32 %89, i32 %90)
  %92 = or i32 %86, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.i40iw_rdma_read*, %struct.i40iw_rdma_read** %11, align 8
  %95 = getelementptr inbounds %struct.i40iw_rdma_read, %struct.i40iw_rdma_read* %94, i32 0, i32 0
  %96 = call i32 @i40iw_set_fragment(i32* %93, i32 0, %struct.TYPE_6__* %95)
  %97 = call i32 (...) @wmb()
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @set_64bit_val(i32* %98, i32 24, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %66
  %104 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %105 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %104)
  br label %106

106:                                              ; preds = %103, %66
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %38, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @i40iw_fragcnt_to_wqesize_sq(i32, i32*) #1

declare dso_local i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i32*, i32, i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_set_fragment(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
