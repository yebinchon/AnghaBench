; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_get_rep_roce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_get_rep_roce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_roce = type { i32 }
%struct.mlx5_ib_dev = type { i32, %struct.mlx5_ib_port*, %struct.TYPE_5__* }
%struct.mlx5_ib_port = type { %struct.mlx5_roce, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_roce* (%struct.mlx5_ib_dev*, %struct.net_device*, i32*)* @mlx5_get_rep_roce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_roce* @mlx5_get_rep_roce(%struct.mlx5_ib_dev* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_roce*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5_eswitch*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlx5_ib_port*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  store %struct.mlx5_eswitch* %17, %struct.mlx5_eswitch** %8, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %66, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %18
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %25, i32 0, i32 1
  %27 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %27, i64 %29
  store %struct.mlx5_ib_port* %30, %struct.mlx5_ib_port** %10, align 8
  %31 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %10, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %66

36:                                               ; preds = %24
  %37 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.mlx5_roce, %struct.mlx5_roce* %38, i32 0, i32 0
  %40 = call i32 @read_lock(i32* %39)
  %41 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %42 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.net_device* @mlx5_ib_get_rep_netdev(%struct.mlx5_eswitch* %41, i32 %46)
  store %struct.net_device* %47, %struct.net_device** %9, align 8
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = icmp eq %struct.net_device* %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %36
  %52 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %10, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.mlx5_roce, %struct.mlx5_roce* %53, i32 0, i32 0
  %55 = call i32 @read_unlock(i32* %54)
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %10, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %59, i32 0, i32 0
  store %struct.mlx5_roce* %60, %struct.mlx5_roce** %4, align 8
  br label %70

61:                                               ; preds = %36
  %62 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %10, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.mlx5_roce, %struct.mlx5_roce* %63, i32 0, i32 0
  %65 = call i32 @read_unlock(i32* %64)
  br label %66

66:                                               ; preds = %61, %35
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %18

69:                                               ; preds = %18
  store %struct.mlx5_roce* null, %struct.mlx5_roce** %4, align 8
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.mlx5_roce*, %struct.mlx5_roce** %4, align 8
  ret %struct.mlx5_roce* %71
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.net_device* @mlx5_ib_get_rep_netdev(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
