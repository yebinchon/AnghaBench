; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_eth_lag_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_eth_lag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_2__*, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

@MLX5_FLOW_NAMESPACE_LAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_eth_lag_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eth_lag_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_flow_namespace*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 2
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %4, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = load i32, i32* @MLX5_FLOW_NAMESPACE_LAG, align 4
  %13 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev* %11, i32 %12)
  store %struct.mlx5_flow_namespace* %13, %struct.mlx5_flow_namespace** %5, align 8
  %14 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %15 = icmp ne %struct.mlx5_flow_namespace* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = call i32 @mlx5_lag_is_roce(%struct.mlx5_core_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %49

21:                                               ; preds = %16
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = call i32 @mlx5_cmd_create_vport_lag(%struct.mlx5_core_dev* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %21
  %29 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %30 = call %struct.mlx5_flow_table* @mlx5_create_lag_demux_flow_table(%struct.mlx5_flow_namespace* %29, i32 0, i32 0)
  store %struct.mlx5_flow_table* %30, %struct.mlx5_flow_table** %6, align 8
  %31 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %32 = call i64 @IS_ERR(%struct.mlx5_flow_table* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %35)
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %28
  %38 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.mlx5_flow_table* %38, %struct.mlx5_flow_table** %42, align 8
  %43 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %49

45:                                               ; preds = %34
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %47 = call i32 @mlx5_cmd_destroy_vport_lag(%struct.mlx5_core_dev* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %37, %26, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_lag_is_roce(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cmd_create_vport_lag(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_lag_demux_flow_table(%struct.mlx5_flow_namespace*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @mlx5_cmd_destroy_vport_lag(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
