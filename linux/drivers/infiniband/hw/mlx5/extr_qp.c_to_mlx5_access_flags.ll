; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_to_mlx5_access_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_to_mlx5_access_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }

@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@MLX5_QP_BIT_RRE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_QP_BIT_RAE = common dso_local global i32 0, align 4
@MLX5_ATOMIC_MODE_OFFSET = common dso_local global i32 0, align 4
@MLX5_QP_BIT_RWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_qp_attr*, i32, i32*)* @to_mlx5_access_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_mlx5_access_flags(%struct.mlx5_ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_ib_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mlx5_ib_dev* @to_mdev(i32 %18)
  store %struct.mlx5_ib_dev* %19, %struct.mlx5_ib_dev** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %4
  %29 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @MLX5_QP_BIT_RRE, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %13, align 8
  %70 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @get_atomic_mode(%struct.mlx5_ib_dev* %69, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %102

80:                                               ; preds = %68
  %81 = load i32, i32* @MLX5_QP_BIT_RAE, align 4
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @MLX5_ATOMIC_MODE_OFFSET, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %80, %63
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @MLX5_QP_BIT_RWE, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @cpu_to_be32(i32 %99)
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %77
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @get_atomic_mode(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
