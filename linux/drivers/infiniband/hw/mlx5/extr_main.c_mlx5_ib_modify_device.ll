; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_modify_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.mlx5_reg_node_desc* }
%struct.mlx5_reg_node_desc = type { i32 }
%struct.ib_device_modify = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@IB_DEVICE_MODIFY_NODE_DESC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_DEVICE_NODE_DESC_MAX = common dso_local global i32 0, align 4
@MLX5_REG_NODE_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)* @mlx5_ib_modify_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device_modify*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_reg_node_desc, align 4
  %10 = alloca %struct.mlx5_reg_node_desc, align 4
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %7, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %53

28:                                               ; preds = %22
  %29 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %30 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %33 = call i32 @memcpy(%struct.mlx5_reg_node_desc* %9, i32 %31, i32 %32)
  %34 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MLX5_REG_NODE_DESC, align 4
  %38 = call i32 @mlx5_core_access_reg(i32 %36, %struct.mlx5_reg_node_desc* %9, i32 4, %struct.mlx5_reg_node_desc* %10, i32 4, i32 %37, i32 0, i32 1)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %28
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %44, i32 0, i32 0
  %46 = load %struct.mlx5_reg_node_desc*, %struct.mlx5_reg_node_desc** %45, align 8
  %47 = load %struct.ib_device_modify*, %struct.ib_device_modify** %7, align 8
  %48 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %51 = call i32 @memcpy(%struct.mlx5_reg_node_desc* %46, i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %41, %27, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(%struct.mlx5_reg_node_desc*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(i32, %struct.mlx5_reg_node_desc*, i32, %struct.mlx5_reg_node_desc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
