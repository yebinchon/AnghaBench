; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_counter_bind_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_counter_bind_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_counter = type { i32 }
%struct.ib_qp = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@MLX5_SHARED_RESOURCE_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_counter*, %struct.ib_qp*)* @mlx5_ib_counter_bind_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_counter_bind_qp(%struct.rdma_counter* %0, %struct.ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_counter*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rdma_counter* %0, %struct.rdma_counter** %4, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %5, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx5_ib_dev* @to_mdev(i32 %11)
  store %struct.mlx5_ib_dev* %12, %struct.mlx5_ib_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX5_SHARED_RESOURCE_UID, align 4
  %22 = call i32 @mlx5_cmd_alloc_q_counter(i32 %20, i32* %7, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %30 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %33 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %34 = call i32 @mlx5_ib_qp_set_counter(%struct.ib_qp* %32, %struct.rdma_counter* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %48

39:                                               ; preds = %37
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mlx5_core_dealloc_q_counter(i32 %42, i32 %43)
  %45 = load %struct.rdma_counter*, %struct.rdma_counter** %4, align 8
  %46 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %38, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_cmd_alloc_q_counter(i32, i32*, i32) #1

declare dso_local i32 @mlx5_ib_qp_set_counter(%struct.ib_qp*, %struct.rdma_counter*) #1

declare dso_local i32 @mlx5_core_dealloc_q_counter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
