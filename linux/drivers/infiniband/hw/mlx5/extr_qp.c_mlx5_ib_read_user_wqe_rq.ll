; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_read_user_wqe_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_read_user_wqe_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.mlx5_ib_wq, %struct.TYPE_3__ }
%struct.mlx5_ib_wq = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_umem* }
%struct.ib_umem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_read_user_wqe_rq(%struct.mlx5_ib_qp* %0, i32 %1, i8* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.mlx5_ib_qp_base*, align 8
  %13 = alloca %struct.ib_umem*, align 8
  %14 = alloca %struct.mlx5_ib_wq*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %17 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.mlx5_ib_qp_base* %19, %struct.mlx5_ib_qp_base** %12, align 8
  %20 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %12, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.ib_umem*, %struct.ib_umem** %22, align 8
  store %struct.ib_umem* %23, %struct.ib_umem** %13, align 8
  %24 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %24, i32 0, i32 0
  store %struct.mlx5_ib_wq* %25, %struct.mlx5_ib_wq** %14, align 8
  %26 = load %struct.ib_umem*, %struct.ib_umem** %13, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mlx5_ib_read_user_wqe_common(%struct.ib_umem* %26, i8* %27, i32 %28, i32 %29, i32 %32, i32 %35, i32 %38, i32 %39, i64* %15)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %5
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %5
  %46 = load i64, i64* %15, align 8
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @mlx5_ib_read_user_wqe_common(%struct.ib_umem*, i8*, i32, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
