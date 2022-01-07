; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_ib_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_ib_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { i32 }
%struct.mlx5_ib_srq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %0, i32 %1, %struct.mlx5_ib_srq* %2) #0 {
  %4 = alloca %struct.mlx5_ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_srq*, align 8
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx5_ib_srq* %2, %struct.mlx5_ib_srq** %6, align 8
  %7 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %8 = icmp ne %struct.mlx5_ib_cq* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %6, align 8
  %17 = call i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq* %14, i32 %15, %struct.mlx5_ib_srq* %16)
  %18 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_irq(i32* %19)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__mlx5_ib_cq_clean(%struct.mlx5_ib_cq*, i32, %struct.mlx5_ib_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
