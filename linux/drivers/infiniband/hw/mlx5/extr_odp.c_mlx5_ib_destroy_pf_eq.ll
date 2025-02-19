; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_destroy_pf_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_destroy_pf_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_pf_eq = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_pf_eq*)* @mlx5_ib_destroy_pf_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_destroy_pf_eq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_pf_eq* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_pf_eq*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_pf_eq* %1, %struct.mlx5_ib_pf_eq** %4, align 8
  %6 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %12, i32 0, i32 4
  %14 = call i32 @mlx5_eq_disable(i32 %8, i32 %11, i32* %13)
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5_eq_destroy_generic(i32 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %22, i32 0, i32 2
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @destroy_workqueue(i32 %27)
  %29 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mempool_destroy(i32 %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @mlx5_eq_disable(i32, i32, i32*) #1

declare dso_local i32 @mlx5_eq_destroy_generic(i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @mempool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
