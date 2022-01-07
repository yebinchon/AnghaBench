; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_rn_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_rn_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_netdev_alloc_params = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RDMA_NETDEV_IPOIB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.rdma_netdev_alloc_params*)* @mlx5_ib_rn_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_rn_get_params(%struct.ib_device* %0, i32 %1, i32 %2, %struct.rdma_netdev_alloc_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rdma_netdev_alloc_params*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rdma_netdev_alloc_params* %3, %struct.rdma_netdev_alloc_params** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @RDMA_NETDEV_IPOIB, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %24

16:                                               ; preds = %4
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call %struct.TYPE_2__* @to_mdev(%struct.ib_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %22 = load %struct.rdma_netdev_alloc_params*, %struct.rdma_netdev_alloc_params** %9, align 8
  %23 = call i32 @mlx5_rdma_rn_get_params(i32 %20, %struct.ib_device* %21, %struct.rdma_netdev_alloc_params* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @mlx5_rdma_rn_get_params(i32, %struct.ib_device*, %struct.rdma_netdev_alloc_params*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
