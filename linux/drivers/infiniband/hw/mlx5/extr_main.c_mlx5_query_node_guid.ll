; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_node_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_node_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32*)* @mlx5_query_node_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_query_node_guid(%struct.mlx5_ib_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 1
  %10 = call i32 @mlx5_get_vport_access_method(i32* %9)
  switch i32 %10, label %25 [
    i32 129, label %11
    i32 130, label %15
    i32 128, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @mlx5_query_mad_ifc_node_guid(%struct.mlx5_ib_dev* %12, i32* %13)
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlx5_query_hca_vport_node_guid(i32 %18, i32* %6)
  store i32 %19, i32* %7, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlx5_query_nic_vport_node_guid(i32 %23, i32* %6)
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cpu_to_be64(i32 %32)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %25, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mlx5_get_vport_access_method(i32*) #1

declare dso_local i32 @mlx5_query_mad_ifc_node_guid(%struct.mlx5_ib_dev*, i32*) #1

declare dso_local i32 @mlx5_query_hca_vport_node_guid(i32, i32*) #1

declare dso_local i32 @mlx5_query_nic_vport_node_guid(i32, i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
