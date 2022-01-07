; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_set_page_pi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_set_page_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.mlx5_ib_mr = type { i64, i64, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_EN_RD = common dso_local global i32 0, align 4
@MLX5_EN_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i32)* @mlx5_set_page_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_set_page_pi(%struct.ib_mr* %0, i32 %1) #0 {
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
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MLX5_EN_RD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MLX5_EN_WR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @cpu_to_be64(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = add nsw i64 %42, %45
  %48 = getelementptr inbounds i32, i32* %38, i64 %47
  store i32 %37, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %28, %25
  %50 = load i32, i32* %3, align 4
  ret i32 %50
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
