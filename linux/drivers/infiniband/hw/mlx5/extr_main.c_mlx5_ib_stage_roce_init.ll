; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_roce_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_roce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@port_type = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_stage_roce_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_stage_roce_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 0
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %4, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = load i32, i32* @port_type, align 4
  %13 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @mlx5_port_type_cap_to_rdma_ll(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %21 = call i32 @mlx5_ib_stage_common_roce_init(%struct.mlx5_ib_dev* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %28 = call i32 @mlx5_enable_eth(%struct.mlx5_ib_dev* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %34

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %1
  store i32 0, i32* %2, align 4
  br label %38

34:                                               ; preds = %31
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %36 = call i32 @mlx5_ib_stage_common_roce_cleanup(%struct.mlx5_ib_dev* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %33, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_port_type_cap_to_rdma_ll(i32) #1

declare dso_local i32 @mlx5_ib_stage_common_roce_init(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_enable_eth(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_stage_common_roce_cleanup(%struct.mlx5_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
