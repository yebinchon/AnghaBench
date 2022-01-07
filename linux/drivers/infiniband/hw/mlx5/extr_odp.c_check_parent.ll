; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_check_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_check_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem_odp = type { i32, %struct.mlx5_ib_mr* }
%struct.mlx5_ib_mr = type { %struct.mlx5_ib_mr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_umem_odp*, %struct.mlx5_ib_mr*)* @check_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_parent(%struct.ib_umem_odp* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca %struct.ib_umem_odp*, align 8
  %4 = alloca %struct.mlx5_ib_mr*, align 8
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  store %struct.ib_umem_odp* %0, %struct.ib_umem_odp** %3, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %4, align 8
  %6 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %3, align 8
  %7 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %6, i32 0, i32 1
  %8 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  store %struct.mlx5_ib_mr* %8, %struct.mlx5_ib_mr** %5, align 8
  %9 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %10 = icmp ne %struct.mlx5_ib_mr* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %12, i32 0, i32 0
  %14 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %15 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %4, align 8
  %16 = icmp eq %struct.mlx5_ib_mr* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %3, align 8
  %19 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %11, %2
  %24 = phi i1 [ false, %11 ], [ false, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
