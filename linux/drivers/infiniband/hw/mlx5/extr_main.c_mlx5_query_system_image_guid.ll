; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_system_image_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_query_system_image_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32*)* @mlx5_query_system_image_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_query_system_image_guid(%struct.ib_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %10)
  store %struct.mlx5_ib_dev* %11, %struct.mlx5_ib_dev** %6, align 8
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 0
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %16 = call i32 @mlx5_get_vport_access_method(%struct.ib_device* %15)
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 130, label %21
    i32 128, label %24
  ]

17:                                               ; preds = %2
  %18 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @mlx5_query_mad_ifc_system_image_guid(%struct.ib_device* %18, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %23 = call i32 @mlx5_query_hca_vport_system_image_guid(%struct.mlx5_core_dev* %22, i32* %8)
  store i32 %23, i32* %9, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %26 = call i32 @mlx5_query_nic_vport_system_image_guid(%struct.mlx5_core_dev* %25, i32* %8)
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cpu_to_be64(i32 %34)
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %27, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_get_vport_access_method(%struct.ib_device*) #1

declare dso_local i32 @mlx5_query_mad_ifc_system_image_guid(%struct.ib_device*, i32*) #1

declare dso_local i32 @mlx5_query_hca_vport_system_image_guid(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_query_nic_vport_system_image_guid(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
