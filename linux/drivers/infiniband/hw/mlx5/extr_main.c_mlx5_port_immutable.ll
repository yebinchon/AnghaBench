; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_port_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_attr = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_hca_vport_context = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@roce = common dso_local global i32 0, align 4
@IB_MGMT_MAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_immutable*)* @mlx5_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_port_immutable(%struct.ib_device* %0, i32 %1, %struct.ib_port_immutable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_immutable*, align 8
  %8 = alloca %struct.ib_port_attr, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_hca_vport_context, align 4
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_immutable* %2, %struct.ib_port_immutable** %7, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %13)
  store %struct.mlx5_ib_dev* %14, %struct.mlx5_ib_dev** %9, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mlx5_ib_port_link_layer(%struct.ib_device* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = bitcast %struct.mlx5_hca_vport_context* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ib_query_port(%struct.ib_device* %19, i32 %20, %struct.ib_port_attr* %8)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mlx5_query_hca_vport_context(i32 %33, i32 0, i32 %34, i32 0, %struct.mlx5_hca_vport_context* %11)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %45 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %49 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %51 = call i32 @get_core_cap_flags(%struct.ib_device* %50, %struct.mlx5_hca_vport_context* %11)
  %52 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %53 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %41
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @roce, align 4
  %62 = call i64 @MLX5_CAP_GEN(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57, %41
  %65 = load i32, i32* @IB_MGMT_MAD_SIZE, align 4
  %66 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %67 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %57
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %38, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_ib_port_link_layer(%struct.ib_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx5_query_hca_vport_context(i32, i32, i32, i32, %struct.mlx5_hca_vport_context*) #1

declare dso_local i32 @get_core_cap_flags(%struct.ib_device*, %struct.mlx5_hca_vport_context*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
