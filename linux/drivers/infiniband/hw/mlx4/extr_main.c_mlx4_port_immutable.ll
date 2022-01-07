; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_port_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_port_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_immutable = type { i32, i32, i32, i8* }
%struct.ib_port_attr = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@RDMA_CORE_PORT_IBA_IB = common dso_local global i32 0, align 4
@IB_MGMT_MAD_SIZE = common dso_local global i8* null, align 8
@MLX4_DEV_CAP_FLAG_IBOE = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@RDMA_CORE_PORT_RAW_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_immutable*)* @mlx4_port_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_port_immutable(%struct.ib_device* %0, i32 %1, %struct.ib_port_immutable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_immutable*, align 8
  %8 = alloca %struct.ib_port_attr, align 4
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_immutable* %2, %struct.ib_port_immutable** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %11)
  store %struct.mlx4_ib_dev* %12, %struct.mlx4_ib_dev** %9, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @mlx4_ib_port_link_layer(%struct.ib_device* %13, i32 %14)
  %16 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @RDMA_CORE_PORT_IBA_IB, align 4
  %20 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %21 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @IB_MGMT_MAD_SIZE, align 8
  %23 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %24 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  br label %74

25:                                               ; preds = %3
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX4_DEV_CAP_FLAG_IBOE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %37 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %38 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %25
  %40 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ROCE_V1_V2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %51 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %54 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %39
  %56 = load i32, i32* @RDMA_CORE_PORT_RAW_PACKET, align 4
  %57 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %58 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %62 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE, align 4
  %65 = load i32, i32* @RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i8*, i8** @IB_MGMT_MAD_SIZE, align 8
  %71 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %72 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %55
  br label %74

74:                                               ; preds = %73, %18
  %75 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @ib_query_port(%struct.ib_device* %75, i32 %76, %struct.ib_port_attr* %8)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %91

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %86 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ib_port_immutable*, %struct.ib_port_immutable** %7, align 8
  %90 = getelementptr inbounds %struct.ib_port_immutable, %struct.ib_port_immutable* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %82, %80
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @mlx4_ib_port_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
