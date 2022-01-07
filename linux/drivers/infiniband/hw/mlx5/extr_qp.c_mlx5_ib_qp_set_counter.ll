; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_qp_set_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_qp_set_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.rdma_counter* }
%struct.rdma_counter = type { i32 }
%struct.mlx5_ib_qp = type { i64, i32, i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@IB_QPS_RTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_qp_set_counter(%struct.ib_qp* %0, %struct.rdma_counter* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.rdma_counter*, align 8
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  store %struct.rdma_counter* %1, %struct.rdma_counter** %4, align 8
  %7 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %8 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %7)
  store %struct.mlx5_ib_qp* %8, %struct.mlx5_ib_qp** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_QPS_RESET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 0
  store %struct.rdma_counter* %18, %struct.rdma_counter** %20, align 8
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPS_RTS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %29 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %30 = call i32 @__mlx5_ib_qp_set_counter(%struct.ib_qp* %28, %struct.rdma_counter* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %35 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 0
  store %struct.rdma_counter* %34, %struct.rdma_counter** %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  br label %44

38:                                               ; preds = %21
  %39 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %42 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %43 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %42, i32 0, i32 0
  store %struct.rdma_counter* %41, %struct.rdma_counter** %43, align 8
  br label %44

44:                                               ; preds = %38, %37, %17
  %45 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mlx5_ib_qp_set_counter(%struct.ib_qp*, %struct.rdma_counter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
