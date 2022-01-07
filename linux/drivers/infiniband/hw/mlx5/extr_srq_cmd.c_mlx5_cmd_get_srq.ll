; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_get_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_get_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_srq_table }
%struct.mlx5_srq_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_core_srq* @mlx5_cmd_get_srq(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_srq_table*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 0
  store %struct.mlx5_srq_table* %8, %struct.mlx5_srq_table** %5, align 8
  %9 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %9, i32 0, i32 0
  %11 = call i32 @xa_lock(i32* %10)
  %12 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.mlx5_core_srq* @xa_load(i32* %13, i32 %14)
  store %struct.mlx5_core_srq* %15, %struct.mlx5_core_srq** %6, align 8
  %16 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %17 = icmp ne %struct.mlx5_core_srq* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @refcount_inc(i32* %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %24, i32 0, i32 0
  %26 = call i32 @xa_unlock(i32* %25)
  %27 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  ret %struct.mlx5_core_srq* %27
}

declare dso_local i32 @xa_lock(i32*) #1

declare dso_local %struct.mlx5_core_srq* @xa_load(i32*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @xa_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
