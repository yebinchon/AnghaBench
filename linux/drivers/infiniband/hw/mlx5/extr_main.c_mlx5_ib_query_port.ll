; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call i32 @mlx5_get_vport_access_method(%struct.ib_device* %12)
  switch i32 %13, label %29 [
    i32 129, label %14
    i32 130, label %19
    i32 128, label %24
  ]

14:                                               ; preds = %3
  %15 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %18 = call i32 @mlx5_query_mad_ifc_port(%struct.ib_device* %15, i32 %16, %struct.ib_port_attr* %17)
  store i32 %18, i32* %8, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %23 = call i32 @mlx5_query_hca_port(%struct.ib_device* %20, i32 %21, %struct.ib_port_attr* %22)
  store i32 %23, i32* %8, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %28 = call i32 @mlx5_query_port_roce(%struct.ib_device* %25, i32 %26, %struct.ib_port_attr* %27)
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %24, %19, %14
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  %36 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %37 = icmp ne %struct.ib_port_attr* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %40 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %39)
  store %struct.mlx5_ib_dev* %40, %struct.mlx5_ib_dev** %9, align 8
  store i32 1, i32* %11, align 4
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %41, i32 %42, i32* null)
  store %struct.mlx5_core_dev* %43, %struct.mlx5_core_dev** %10, align 8
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %45 = icmp ne %struct.mlx5_core_dev* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %47, i32 0, i32 0
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %48, align 8
  store %struct.mlx5_core_dev* %49, %struct.mlx5_core_dev** %10, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %52 = call i32 @mlx5_core_reserved_gids_count(%struct.mlx5_core_dev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %62 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %35, %32
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @mlx5_get_vport_access_method(%struct.ib_device*) #1

declare dso_local i32 @mlx5_query_mad_ifc_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx5_query_hca_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx5_query_port_roce(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i32, i32*) #1

declare dso_local i32 @mlx5_core_reserved_gids_count(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
