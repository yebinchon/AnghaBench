; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_get_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_get_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.net_device* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.ib_device*, i32)* @mlx5_ib_get_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @mlx5_ib_get_netdev(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %6, align 8
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %11, i32 %12, i32* null)
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %8, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %15 = icmp ne %struct.mlx5_core_dev* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %19 = call %struct.net_device* @mlx5_lag_get_roce_netdev(%struct.mlx5_core_dev* %18)
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %60

23:                                               ; preds = %17
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @read_lock(i32* %32)
  %34 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  store %struct.net_device* %43, %struct.net_device** %7, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i32 @dev_hold(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %23
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @read_unlock(i32* %58)
  br label %60

60:                                               ; preds = %49, %22
  %61 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %61, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %64, %struct.net_device** %3, align 8
  br label %65

65:                                               ; preds = %60, %16
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %66
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i32, i32*) #1

declare dso_local %struct.net_device* @mlx5_lag_get_roce_netdev(%struct.mlx5_core_dev*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
