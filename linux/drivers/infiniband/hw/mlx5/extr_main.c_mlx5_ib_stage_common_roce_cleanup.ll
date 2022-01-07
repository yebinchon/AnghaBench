; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_common_roce_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_common_roce_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @mlx5_ib_stage_common_roce_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_stage_common_roce_cleanup(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %4 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @mlx5_core_native_port_num(i32 %6)
  %8 = sub nsw i64 %7, 1
  store i64 %8, i64* %3, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @mlx5_remove_netdev_notifier(%struct.mlx5_ib_dev* %9, i64 %10)
  ret void
}

declare dso_local i64 @mlx5_core_native_port_num(i32) #1

declare dso_local i32 @mlx5_remove_netdev_notifier(%struct.mlx5_ib_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
