; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_destroy_gsi_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_destroy_gsi_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)* }
%struct.TYPE_3__ = type { i32 (i32, i32*)* }
%struct.qed_rdma_destroy_cq_in_params = type { i64 }
%struct.qed_rdma_destroy_cq_out_params = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32 }
%struct.qedr_cq = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.ib_qp_init_attr*)* @qedr_destroy_gsi_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_destroy_gsi_cq(%struct.qedr_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.qed_rdma_destroy_cq_in_params, align 8
  %6 = alloca %struct.qed_rdma_destroy_cq_out_params, align 4
  %7 = alloca %struct.qedr_cq*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %4, align 8
  %8 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %9 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qedr_cq* @get_qedr_cq(i32 %10)
  store %struct.qedr_cq* %11, %struct.qedr_cq** %7, align 8
  %12 = load %struct.qedr_cq*, %struct.qedr_cq** %7, align 8
  %13 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %5, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)*, i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)** %19, align 8
  %21 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %22 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23, %struct.qed_rdma_destroy_cq_in_params* %5, %struct.qed_rdma_destroy_cq_out_params* %6)
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %26 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32*)*, i32 (i32, i32*)** %30, align 8
  %32 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qedr_cq*, %struct.qedr_cq** %7, align 8
  %36 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %35, i32 0, i32 1
  %37 = call i32 %31(i32 %34, i32* %36)
  %38 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.qedr_cq* @get_qedr_cq(i32 %40)
  store %struct.qedr_cq* %41, %struct.qedr_cq** %7, align 8
  %42 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %5, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.qedr_cq*, %struct.qedr_cq** %7, align 8
  %45 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %2
  %49 = load %struct.qedr_cq*, %struct.qedr_cq** %7, align 8
  %50 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %5, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %54 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)*, i32 (i32, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)** %56, align 8
  %58 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %59 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %57(i32 %60, %struct.qed_rdma_destroy_cq_in_params* %5, %struct.qed_rdma_destroy_cq_out_params* %6)
  %62 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %63 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32*)*, i32 (i32, i32*)** %67, align 8
  %69 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %70 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.qedr_cq*, %struct.qedr_cq** %7, align 8
  %73 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %72, i32 0, i32 1
  %74 = call i32 %68(i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.qedr_cq* @get_qedr_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
