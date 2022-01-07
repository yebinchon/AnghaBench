; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_roce_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_roce_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@port_type = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @mlx5_ib_stage_roce_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_stage_roce_cleanup(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %6 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %6, i32 0, i32 0
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %3, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %10 = load i32, i32* @port_type, align 4
  %11 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mlx5_port_type_cap_to_rdma_ll(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %19 = call i32 @mlx5_disable_eth(%struct.mlx5_ib_dev* %18)
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %21 = call i32 @mlx5_ib_stage_common_roce_cleanup(%struct.mlx5_ib_dev* %20)
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_port_type_cap_to_rdma_ll(i32) #1

declare dso_local i32 @mlx5_disable_eth(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_stage_common_roce_cleanup(%struct.mlx5_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
