; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mlx5_ib.h_mlx5_ib_can_use_umr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mlx5_ib.h_mlx5_ib_can_use_umr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@umr_modify_entity_size_disabled = common dso_local global i32 0, align 4
@atomic = common dso_local global i32 0, align 4
@umr_modify_atomic_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32)* @mlx5_ib_can_use_umr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @umr_modify_entity_size_disabled, align 4
  %10 = call i64 @MLX5_CAP_GEN(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @atomic, align 4
  %21 = call i64 @MLX5_CAP_GEN(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @umr_modify_atomic_disabled, align 4
  %28 = call i64 @MLX5_CAP_GEN(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %23, %16, %13
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
