; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_prefetch_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_prefetch_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.mlx5_ib_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, i64, %struct.ib_sge*, i64)* @mlx5_ib_prefetch_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_prefetch_sg_list(%struct.ib_pd* %0, i64 %1, %struct.ib_sge* %2, i64 %3) #0 {
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_sge*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.ib_sge*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ib_sge* %2, %struct.ib_sge** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %15 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx5_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %11, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %43, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.ib_sge*, %struct.ib_sge** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %23, i64 %24
  store %struct.ib_sge* %25, %struct.ib_sge** %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %27 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %28 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %29 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %32 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %35 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @pagefault_single_data_segment(%struct.mlx5_ib_dev* %26, %struct.ib_pd* %27, i32 %30, i32 %33, i32 %36, i32* %13, i32* null, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %46

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %18

46:                                               ; preds = %41, %18
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  br label %52

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  ret i32 %53
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @pagefault_single_data_segment(%struct.mlx5_ib_dev*, %struct.ib_pd*, i32, i32, i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
