; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_common_roce_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_common_roce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_USER_VERBS_EX_CMD_CREATE_WQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_MODIFY_WQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_DESTROY_WQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_CREATE_RWQ_IND_TBL = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_DESTROY_RWQ_IND_TBL = common dso_local global i64 0, align 8
@mlx5_ib_dev_common_roce_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_stage_common_roce_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_stage_common_roce_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %4 = load i64, i64* @IB_USER_VERBS_EX_CMD_CREATE_WQ, align 8
  %5 = shl i64 1, %4
  %6 = load i64, i64* @IB_USER_VERBS_EX_CMD_MODIFY_WQ, align 8
  %7 = shl i64 1, %6
  %8 = or i64 %5, %7
  %9 = load i64, i64* @IB_USER_VERBS_EX_CMD_DESTROY_WQ, align 8
  %10 = shl i64 1, %9
  %11 = or i64 %8, %10
  %12 = load i64, i64* @IB_USER_VERBS_EX_CMD_CREATE_RWQ_IND_TBL, align 8
  %13 = shl i64 1, %12
  %14 = or i64 %11, %13
  %15 = load i64, i64* @IB_USER_VERBS_EX_CMD_DESTROY_RWQ_IND_TBL, align 8
  %16 = shl i64 1, %15
  %17 = or i64 %14, %16
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = or i64 %21, %17
  store i64 %22, i64* %20, align 8
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 1
  %25 = call i32 @ib_set_device_ops(%struct.TYPE_2__* %24, i32* @mlx5_ib_dev_common_roce_ops)
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @mlx5_core_native_port_num(i32 %28)
  %30 = sub nsw i64 %29, 1
  store i64 %30, i64* %3, align 8
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @mlx5_add_netdev_notifier(%struct.mlx5_ib_dev* %31, i64 %32)
  ret i32 %33
}

declare dso_local i32 @ib_set_device_ops(%struct.TYPE_2__*, i32*) #1

declare dso_local i64 @mlx5_core_native_port_num(i32) #1

declare dso_local i32 @mlx5_add_netdev_notifier(%struct.mlx5_ib_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
