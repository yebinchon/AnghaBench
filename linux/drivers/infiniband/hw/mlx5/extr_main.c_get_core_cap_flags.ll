; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_get_core_cap_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_get_core_cap_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx5_hca_vport_context = type { i64 }
%struct.mlx5_ib_dev = type { i32 }

@l3_type = common dso_local global i32 0, align 4
@roce_version = common dso_local global i32 0, align 4
@RDMA_CORE_CAP_IB_GRH_REQUIRED = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_IB = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_RAW_PACKET = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV4_CAP = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV6_CAP = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_1_CAP = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE = common dso_local global i32 0, align 4
@MLX5_ROCE_VERSION_2_CAP = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx5_hca_vport_context*)* @get_core_cap_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_core_cap_flags(%struct.ib_device* %0, %struct.mlx5_hca_vport_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.mlx5_hca_vport_context*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.mlx5_hca_vport_context* %1, %struct.mlx5_hca_vport_context** %5, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %6, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %15 = call i32 @mlx5_ib_port_link_layer(%struct.ib_device* %14, i32 1)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @l3_type, align 4
  %20 = call i32 @MLX5_CAP_ROCE(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @roce_version, align 4
  %25 = call i32 @MLX5_CAP_ROCE(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5_core_mp_enabled(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %33 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @RDMA_CORE_CAP_IB_GRH_REQUIRED, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @RDMA_CORE_PORT_IBA_IB, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @RDMA_CORE_PORT_RAW_PACKET, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV4_CAP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %90

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV6_CAP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %90

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MLX5_ROCE_VERSION_1_CAP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MLX5_ROCE_VERSION_2_CAP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %68, %61, %45
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx5_ib_port_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @MLX5_CAP_ROCE(i32, i32) #1

declare dso_local i32 @mlx5_core_mp_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
