; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_user_rq_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_user_rq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_wq_init_attr = type { i32 }
%struct.mlx5_ib_create_wq = type { i32, i64 }
%struct.mlx5_ib_rwq = type { i64, i32, i32, i32, i32 }

@log_max_wq_sz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_wq_init_attr*, %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_rwq*)* @set_user_rq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user_rq_size(%struct.mlx5_ib_dev* %0, %struct.ib_wq_init_attr* %1, %struct.mlx5_ib_create_wq* %2, %struct.mlx5_ib_rwq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.ib_wq_init_attr*, align 8
  %8 = alloca %struct.mlx5_ib_create_wq*, align 8
  %9 = alloca %struct.mlx5_ib_rwq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.ib_wq_init_attr* %1, %struct.ib_wq_init_attr** %7, align 8
  store %struct.mlx5_ib_create_wq* %2, %struct.mlx5_ib_create_wq** %8, align 8
  store %struct.mlx5_ib_rwq* %3, %struct.mlx5_ib_rwq** %9, align 8
  %10 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %11 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @log_max_wq_sz, align 4
  %17 = call i32 @MLX5_CAP_GEN(i32 %15, i32 %16)
  %18 = shl i32 1, %17
  %19 = icmp sgt i32 %12, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %67

23:                                               ; preds = %4
  %24 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %8, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mlx5_ib_create_wq*, %struct.mlx5_ib_create_wq** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_create_wq, %struct.mlx5_ib_create_wq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %48, i32 0, i32 4
  %50 = call i64 @check_shl_overflow(i64 %44, i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %67

55:                                               ; preds = %31
  %56 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ilog2(i64 %63)
  %65 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %9, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %55, %52, %28, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i64 @check_shl_overflow(i64, i32, i32*) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
