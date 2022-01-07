; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_init_cq_frag_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_init_cq_frag_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { i32 }
%struct.mlx5_ib_cq_buf = type { i32, i32 }
%struct.mlx5_cqe64 = type { i32 }

@MLX5_CQE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_cq*, %struct.mlx5_ib_cq_buf*)* @init_cq_frag_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cq_frag_buf(%struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq_buf* %1) #0 {
  %3 = alloca %struct.mlx5_ib_cq*, align 8
  %4 = alloca %struct.mlx5_ib_cq_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %3, align 8
  store %struct.mlx5_ib_cq_buf* %1, %struct.mlx5_ib_cq_buf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @get_cqe(%struct.mlx5_ib_cq* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 64
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr i8, i8* %25, i64 64
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i8* [ %23, %22 ], [ %26, %24 ]
  %29 = bitcast i8* %28 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %29, %struct.mlx5_cqe64** %7, align 8
  %30 = load i32, i32* @MLX5_CQE_INVALID, align 4
  %31 = shl i32 %30, 4
  %32 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i8* @get_cqe(%struct.mlx5_ib_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
