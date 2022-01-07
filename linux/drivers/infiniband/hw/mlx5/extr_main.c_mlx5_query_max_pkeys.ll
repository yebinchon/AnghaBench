; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_max_pkeys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_max_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@pkey_table_size = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32*)* @mlx5_query_max_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_query_max_pkeys(%struct.ib_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %9 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %8)
  store %struct.mlx5_ib_dev* %9, %struct.mlx5_ib_dev** %6, align 8
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 0
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  store %struct.mlx5_core_dev* %12, %struct.mlx5_core_dev** %7, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = call i32 @mlx5_get_vport_access_method(%struct.ib_device* %13)
  switch i32 %14, label %25 [
    i32 129, label %15
    i32 130, label %19
    i32 128, label %19
  ]

15:                                               ; preds = %2
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @mlx5_query_mad_ifc_max_pkeys(%struct.ib_device* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2, %2
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %21 = load i32, i32* @pkey_table_size, align 4
  %22 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = call i32 @mlx5_to_sw_pkey_sz(i32 %22)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %19, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_get_vport_access_method(%struct.ib_device*) #1

declare dso_local i32 @mlx5_query_mad_ifc_max_pkeys(%struct.ib_device*, i32*) #1

declare dso_local i32 @mlx5_to_sw_pkey_sz(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
