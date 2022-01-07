; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_iwarp_populate_user_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_iwarp_populate_user_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.qed_rdma_create_qp_out_params = type { i32, i32, i32, i32 }

@FW_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qed_rdma_create_qp_out_params*)* @qedr_iwarp_populate_user_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_iwarp_populate_user_qp(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qed_rdma_create_qp_out_params* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_qp*, align 8
  %6 = alloca %struct.qed_rdma_create_qp_out_params*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %5, align 8
  store %struct.qed_rdma_create_qp_out_params* %2, %struct.qed_rdma_create_qp_out_params** %6, align 8
  %7 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %6, align 8
  %8 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %11 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %9, i32* %14, align 4
  %15 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %6, align 8
  %16 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %19 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %24 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %25 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %29 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %33 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* @FW_PAGE_SHIFT, align 4
  %36 = call i32 @qedr_populate_pbls(%struct.qedr_dev* %23, i32 %27, %struct.TYPE_6__* %31, i32* %34, i32 %35)
  %37 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %38 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %3
  %42 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %6, align 8
  %43 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %46 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.qed_rdma_create_qp_out_params*, %struct.qed_rdma_create_qp_out_params** %6, align 8
  %51 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %54 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %41, %3
  %59 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %60 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %61 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %65 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %69 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* @FW_PAGE_SHIFT, align 4
  %72 = call i32 @qedr_populate_pbls(%struct.qedr_dev* %59, i32 %63, %struct.TYPE_6__* %67, i32* %70, i32 %71)
  ret void
}

declare dso_local i32 @qedr_populate_pbls(%struct.qedr_dev*, i32, %struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
