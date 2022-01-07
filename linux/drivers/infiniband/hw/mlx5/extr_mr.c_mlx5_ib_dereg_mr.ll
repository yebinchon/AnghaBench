; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_mr = type { %struct.mlx5_ib_mr*, %struct.TYPE_2__, %struct.mlx5_ib_mr* }
%struct.TYPE_2__ = type { i32 }

@IB_MR_TYPE_INTEGRITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %6 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %7 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %6)
  store %struct.mlx5_ib_mr* %7, %struct.mlx5_ib_mr** %5, align 8
  %8 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IB_MR_TYPE_INTEGRITY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %14, i32 0, i32 2
  %16 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @to_mdev(i32 %19)
  %21 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %21, i32 0, i32 2
  %23 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %22, align 8
  %24 = call i32 @dereg_mr(i32 %20, %struct.mlx5_ib_mr* %23)
  %25 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %25, i32 0, i32 0
  %27 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %26, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @to_mdev(i32 %30)
  %32 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %32, i32 0, i32 0
  %34 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %33, align 8
  %35 = call i32 @dereg_mr(i32 %31, %struct.mlx5_ib_mr* %34)
  br label %36

36:                                               ; preds = %13, %2
  %37 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %38 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @to_mdev(i32 %39)
  %41 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %42 = call i32 @dereg_mr(i32 %40, %struct.mlx5_ib_mr* %41)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @dereg_mr(i32, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @to_mdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
