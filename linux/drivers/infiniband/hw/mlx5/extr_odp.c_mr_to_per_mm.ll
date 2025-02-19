; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mr_to_per_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mr_to_per_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext_per_mm = type { i32 }
%struct.mlx5_ib_mr = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_ucontext_per_mm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucontext_per_mm* (%struct.mlx5_ib_mr*)* @mr_to_per_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucontext_per_mm* @mr_to_per_mm(%struct.mlx5_ib_mr* %0) #0 {
  %2 = alloca %struct.ib_ucontext_per_mm*, align 8
  %3 = alloca %struct.mlx5_ib_mr*, align 8
  store %struct.mlx5_ib_mr* %0, %struct.mlx5_ib_mr** %3, align 8
  %4 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %5 = icmp ne %struct.mlx5_ib_mr* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %8 = call i32 @is_odp_mr(%struct.mlx5_ib_mr* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ true, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.ib_ucontext_per_mm* null, %struct.ib_ucontext_per_mm** %2, align 8
  br label %24

17:                                               ; preds = %11
  %18 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @to_ib_umem_odp(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %22, align 8
  store %struct.ib_ucontext_per_mm* %23, %struct.ib_ucontext_per_mm** %2, align 8
  br label %24

24:                                               ; preds = %17, %16
  %25 = load %struct.ib_ucontext_per_mm*, %struct.ib_ucontext_per_mm** %2, align 8
  ret %struct.ib_ucontext_per_mm* %25
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_odp_mr(%struct.mlx5_ib_mr*) #1

declare dso_local %struct.TYPE_2__* @to_ib_umem_odp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
