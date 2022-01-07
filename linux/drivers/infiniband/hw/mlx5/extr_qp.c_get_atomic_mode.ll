; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_get_atomic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_get_atomic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_IB_QPT_DCT = common dso_local global i32 0, align 4
@atomic_size_dc = common dso_local global i32 0, align 4
@atomic_size_qp = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_EXTENDED_CMP_SWAP = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_EXTENDED_FETCH_ADD = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_CMP_SWAP = common dso_local global i32 0, align 4
@MLX5_ATOMIC_OPS_FETCH_ADD = common dso_local global i32 0, align 4
@MLX5_ATOMIC_MODE_IB_COMP = common dso_local global i32 0, align 4
@atomic = common dso_local global i32 0, align 4
@atomic_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32)* @get_atomic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_atomic_mode(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @MLX5_CAP_ATOMIC(i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @MLX5_CAP_GEN(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MLX5_IB_QPT_DCT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @atomic_size_dc, align 4
  %37 = call i8* @MLX5_CAP_ATOMIC(i32 %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %9, align 4
  br label %46

39:                                               ; preds = %28
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @atomic_size_qp, align 4
  %44 = call i8* @MLX5_CAP_ATOMIC(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MLX5_ATOMIC_OPS_EXTENDED_CMP_SWAP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MLX5_ATOMIC_OPS_EXTENDED_FETCH_ADD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @atomic_size_to_mode(i32 %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @MLX5_ATOMIC_OPS_CMP_SWAP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MLX5_ATOMIC_OPS_FETCH_ADD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @MLX5_ATOMIC_MODE_IB_COMP, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %67, %62, %59
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @MLX5_CAP_ATOMIC(i32, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @atomic_size_to_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
