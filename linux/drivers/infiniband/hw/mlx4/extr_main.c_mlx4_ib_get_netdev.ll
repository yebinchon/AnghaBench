; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_get_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_get_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%struct.mlx4_ib_dev = type { i32 }

@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_device*, i32)* @mlx4_ib_get_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @mlx4_ib_get_netdev(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx4_ib_dev* %10, %struct.mlx4_ib_dev** %5, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MLX4_PROT_ETH, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.net_device* @mlx4_get_protocol_dev(i32 %14, i32 %15, i32 %16)
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @mlx4_is_bonded(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %27)
  store %struct.net_device* %28, %struct.net_device** %7, align 8
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i32 @netdev_priv(%struct.net_device* %32)
  %34 = call %struct.net_device* @bond_option_active_slave_get_rcu(i32 %33)
  store %struct.net_device* %34, %struct.net_device** %8, align 8
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %38, %struct.net_device** %6, align 8
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @dev_hold(%struct.net_device* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  ret %struct.net_device* %50
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @mlx4_get_protocol_dev(i32, i32, i32) #1

declare dso_local i64 @mlx4_is_bonded(i32) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.net_device* @bond_option_active_slave_get_rcu(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
