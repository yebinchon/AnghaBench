; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mlx5_ib_mr = type { i64, i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_EN_RD = common dso_local global i32 0, align 4
@MLX5_EN_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i32)* @mlx5_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_set_page(%struct.ib_mr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_mr*, align 8
  %7 = alloca i32*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %9 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %8)
  store %struct.mlx5_ib_mr* %9, %struct.mlx5_ib_mr** %6, align 8
  %10 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MLX5_EN_RD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MLX5_EN_WR, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @cpu_to_be64(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %32, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
