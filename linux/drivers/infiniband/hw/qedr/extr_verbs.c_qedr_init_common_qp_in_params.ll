; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_common_qp_in_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_common_qp_in_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_pd = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ib_qp_init_attr = type { i64, i32, i32 }
%struct.qed_rdma_create_qp_in_params = type { i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_pd*, %struct.qedr_qp*, %struct.ib_qp_init_attr*, i32, %struct.qed_rdma_create_qp_in_params*)* @qedr_init_common_qp_in_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_init_common_qp_in_params(%struct.qedr_dev* %0, %struct.qedr_pd* %1, %struct.qedr_qp* %2, %struct.ib_qp_init_attr* %3, i32 %4, %struct.qed_rdma_create_qp_in_params* %5) #0 {
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_pd*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca %struct.ib_qp_init_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_rdma_create_qp_in_params*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_pd* %1, %struct.qedr_pd** %8, align 8
  store %struct.qedr_qp* %2, %struct.qedr_qp** %9, align 8
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.qed_rdma_create_qp_in_params* %5, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %13 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %14 = ptrtoint %struct.qedr_qp* %13 to i64
  %15 = call i32 @lower_32_bits(i64 %14)
  %16 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %17 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %19 = ptrtoint %struct.qedr_qp* %18 to i64
  %20 = call i32 @upper_32_bits(i64 %19)
  %21 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %22 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %24 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %30 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %33 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qedr_pd*, %struct.qedr_pd** %8, align 8
  %35 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %38 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.qedr_pd*, %struct.qedr_pd** %8, align 8
  %40 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %6
  %44 = load %struct.qedr_pd*, %struct.qedr_pd** %8, align 8
  %45 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %6
  %50 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %51 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi i32 [ %48, %43 ], [ %52, %49 ]
  %55 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %56 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_6__* @get_qedr_cq(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %64 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %66 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %68 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %70 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %72 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %53
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %77 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_6__* @get_qedr_cq(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %83 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  br label %102

84:                                               ; preds = %53
  %85 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %86 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.TYPE_6__* @get_qedr_cq(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %92 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %94 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %99 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %12, align 8
  %101 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %84, %75
  ret void
}

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local %struct.TYPE_6__* @get_qedr_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
