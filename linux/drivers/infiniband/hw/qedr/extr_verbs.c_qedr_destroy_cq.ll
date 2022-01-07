; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)* }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }
%struct.qed_rdma_destroy_cq_in_params = type { i32 }
%struct.qed_rdma_destroy_cq_out_params = type { i64 }
%struct.qedr_cq = type { i32, i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@QEDR_MSG_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"destroy cq %p (icid=%d)\0A\00", align 1
@QEDR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@QEDR_DESTROY_CQ_MAX_ITERATIONS = common dso_local global i32 0, align 4
@QEDR_DESTROY_CQ_ITER_DURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedr_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.qed_rdma_destroy_cq_out_params, align 8
  %7 = alloca %struct.qed_rdma_destroy_cq_in_params, align 4
  %8 = alloca %struct.qedr_cq*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %10 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %11 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.qedr_dev* @get_qedr_dev(i32 %12)
  store %struct.qedr_dev* %13, %struct.qedr_dev** %5, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %15 = call %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq* %14)
  store %struct.qedr_cq* %15, %struct.qedr_cq** %8, align 8
  %16 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %17 = load i32, i32* @QEDR_MSG_CQ, align 4
  %18 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %19 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %20 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DP_DEBUG(%struct.qedr_dev* %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.qedr_cq* %18, i32 %21)
  %23 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %24 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %26 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QEDR_CQ_TYPE_GSI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %115

31:                                               ; preds = %2
  %32 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %33 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %37 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)*, i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)** %39, align 8
  %41 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %42 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43, %struct.qed_rdma_destroy_cq_in_params* %7, %struct.qed_rdma_destroy_cq_out_params* %6)
  %45 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %46 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32*)*, i32 (i32, i32*)** %50, align 8
  %52 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %53 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %56 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %55, i32 0, i32 4
  %57 = call i32 %51(i32 %54, i32* %56)
  %58 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %59 = icmp ne %struct.ib_udata* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %31
  %61 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %62 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %63 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %66 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qedr_free_pbl(%struct.qedr_dev* %61, i32* %64, i32 %68)
  %70 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %71 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ib_umem_release(i32 %73)
  br label %75

75:                                               ; preds = %60, %31
  %76 = load i32, i32* @QEDR_DESTROY_CQ_MAX_ITERATIONS, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %90, %75
  %78 = getelementptr inbounds %struct.qed_rdma_destroy_cq_out_params, %struct.qed_rdma_destroy_cq_out_params* %6, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %81 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @READ_ONCE(i32 %82)
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %85, %77
  %89 = phi i1 [ false, %77 ], [ %87, %85 ]
  br i1 %89, label %90, label %95

90:                                               ; preds = %88
  %91 = load i32, i32* @QEDR_DESTROY_CQ_ITER_DURATION, align 4
  %92 = call i32 @udelay(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  br label %77

95:                                               ; preds = %88
  %96 = load i32, i32* @QEDR_DESTROY_CQ_MAX_ITERATIONS, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %110, %95
  %98 = getelementptr inbounds %struct.qed_rdma_destroy_cq_out_params, %struct.qed_rdma_destroy_cq_out_params* %6, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %101 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @READ_ONCE(i32 %102)
  %104 = icmp ne i64 %99, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %105, %97
  %109 = phi i1 [ false, %97 ], [ %107, %105 ]
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = load i32, i32* @QEDR_DESTROY_CQ_ITER_DURATION, align 4
  %112 = call i32 @msleep(i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %9, align 4
  br label %97

115:                                              ; preds = %30, %108
  ret void
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, %struct.qedr_cq*, i32) #1

declare dso_local i32 @qedr_free_pbl(%struct.qedr_dev*, i32*, i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
