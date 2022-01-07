; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_get_sw_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_get_sw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@MLX5_CQE_INVALID = common dso_local global i64 0, align 8
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_ib_cq*, i32)* @get_sw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sw_cqe(%struct.mlx5_ib_cq* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %9, %13
  %15 = call i8* @get_cqe(%struct.mlx5_ib_cq* %8, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 64
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr i8, i8* %24, i64 64
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i8* [ %22, %21 ], [ %25, %23 ]
  %28 = bitcast i8* %27 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %28, %struct.mlx5_cqe64** %7, align 8
  %29 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %30 = call i64 @get_cqe_opcode(%struct.mlx5_cqe64* %29)
  %31 = load i64, i64* @MLX5_CQE_INVALID, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %26
  %37 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = xor i32 %41, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %36
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %3, align 8
  br label %58

57:                                               ; preds = %36, %26
  store i8* null, i8** %3, align 8
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i8* @get_cqe(%struct.mlx5_ib_cq*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @get_cqe_opcode(%struct.mlx5_cqe64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
