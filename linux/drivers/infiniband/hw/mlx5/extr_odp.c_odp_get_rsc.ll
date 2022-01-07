; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_odp_get_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_odp_get_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_rsc_common = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_srq = type { %struct.mlx5_core_rsc_common }

@MLX5_RES_QP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_core_rsc_common* (%struct.mlx5_ib_dev*, i32, i32)* @odp_get_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_core_rsc_common* @odp_get_rsc(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_rsc_common*, align 8
  %8 = alloca %struct.mlx5_core_srq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.mlx5_core_rsc_common* null, %struct.mlx5_core_rsc_common** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %27 [
    i32 128, label %10
    i32 130, label %20
    i32 129, label %20
    i32 131, label %20
  ]

10:                                               ; preds = %3
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mlx5_core_srq* @mlx5_cmd_get_srq(%struct.mlx5_ib_dev* %11, i32 %12)
  store %struct.mlx5_core_srq* %13, %struct.mlx5_core_srq** %8, align 8
  %14 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %8, align 8
  %15 = icmp ne %struct.mlx5_core_srq* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %17, i32 0, i32 0
  store %struct.mlx5_core_rsc_common* %18, %struct.mlx5_core_rsc_common** %7, align 8
  br label %19

19:                                               ; preds = %16, %10
  br label %28

20:                                               ; preds = %3, %3, %3
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MLX5_RES_QP, align 4
  %26 = call %struct.mlx5_core_rsc_common* @mlx5_core_res_hold(i32 %23, i32 %24, i32 %25)
  store %struct.mlx5_core_rsc_common* %26, %struct.mlx5_core_rsc_common** %7, align 8
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %20, %19
  %29 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  ret %struct.mlx5_core_rsc_common* %29
}

declare dso_local %struct.mlx5_core_srq* @mlx5_cmd_get_srq(%struct.mlx5_ib_dev*, i32) #1

declare dso_local %struct.mlx5_core_rsc_common* @mlx5_core_res_hold(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
