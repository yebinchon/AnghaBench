; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_flow_action_packet_reformat_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_flow_action_packet_reformat_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX = common dso_local global i32 0, align 4
@encap_general_header = common dso_local global i32 0, align 4
@reformat_l2_to_l3_tunnel = common dso_local global i32 0, align 4
@MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX = common dso_local global i32 0, align 4
@reformat_l3_tunnel_to_l2 = common dso_local global i32 0, align 4
@decap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, i32)* @mlx5_ib_flow_action_packet_reformat_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_flow_action_packet_reformat_valid(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %53 [
    i32 131, label %9
    i32 130, label %20
    i32 128, label %31
    i32 129, label %42
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @encap_general_header, align 4
  %18 = call i32 @MLX5_CAP_FLOWTABLE(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %9
  br label %54

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @reformat_l2_to_l3_tunnel, align 4
  %29 = call i32 @MLX5_CAP_FLOWTABLE_NIC_TX(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %55

30:                                               ; preds = %20
  br label %54

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @reformat_l3_tunnel_to_l2, align 4
  %40 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %31
  br label %54

42:                                               ; preds = %3
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @decap, align 4
  %51 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %42
  br label %54

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %53, %52, %41, %30, %19
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %46, %35, %24, %13
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @MLX5_CAP_FLOWTABLE(i32, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_TX(i32, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
