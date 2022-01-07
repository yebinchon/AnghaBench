; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_mr = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.mlx4_ib_mr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %8 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %9 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %8)
  store %struct.mlx4_ib_mr* %9, %struct.mlx4_ib_mr** %6, align 8
  %10 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %11 = call i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr* %10)
  %12 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %13 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @to_mdev(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %18, i32 0, i32 1
  %20 = call i32 @mlx4_mr_free(i32 %17, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ib_umem_release(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %37 = call i32 @kfree(%struct.mlx4_ib_mr* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx4_free_priv_pages(%struct.mlx4_ib_mr*) #1

declare dso_local i32 @mlx4_mr_free(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
