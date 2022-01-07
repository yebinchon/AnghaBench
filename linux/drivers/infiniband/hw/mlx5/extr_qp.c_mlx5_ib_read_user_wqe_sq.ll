; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_read_user_wqe_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_read_user_wqe_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.mlx5_ib_wq, %struct.TYPE_3__ }
%struct.mlx5_ib_wq = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_umem* }
%struct.ib_umem = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_DS_MASK = common dso_local global i32 0, align 4
@MLX5_WQE_DS_UNITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_read_user_wqe_sq(%struct.mlx5_ib_qp* %0, i32 %1, i8* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.mlx5_ib_qp_base*, align 8
  %13 = alloca %struct.ib_umem*, align 8
  %14 = alloca %struct.mlx5_ib_wq*, align 8
  %15 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %21 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.mlx5_ib_qp_base* %23, %struct.mlx5_ib_qp_base** %12, align 8
  %24 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %12, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ib_umem*, %struct.ib_umem** %26, align 8
  store %struct.ib_umem* %27, %struct.ib_umem** %13, align 8
  %28 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %28, i32 0, i32 0
  store %struct.mlx5_ib_wq* %29, %struct.mlx5_ib_wq** %14, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %114

36:                                               ; preds = %5
  %37 = load %struct.ib_umem*, %struct.ib_umem** %13, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @mlx5_ib_read_user_wqe_common(%struct.ib_umem* %37, i8* %38, i32 %39, i32 %40, i32 %43, i32 %46, i32 %49, i64 %51, i64* %16)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = load i32, i32* %19, align 4
  store i32 %56, i32* %6, align 4
  br label %114

57:                                               ; preds = %36
  %58 = load i64, i64* %16, align 8
  %59 = icmp ult i64 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %114

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = bitcast i8* %64 to %struct.mlx5_wqe_ctrl_seg*
  store %struct.mlx5_wqe_ctrl_seg* %65, %struct.mlx5_wqe_ctrl_seg** %15, align 8
  %66 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %15, align 8
  %67 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = load i32, i32* @MLX5_WQE_CTRL_DS_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* @MLX5_WQE_DS_UNITS, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %18, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i64, i64* %16, align 8
  %81 = load i64*, i64** %11, align 8
  store i64 %80, i64* %81, align 8
  store i32 0, i32* %6, align 4
  br label %114

82:                                               ; preds = %63
  %83 = load %struct.ib_umem*, %struct.ib_umem** %13, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr i8, i8* %84, i64 %85
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %16, align 8
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %96 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %14, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %16, align 8
  %103 = sub i64 %101, %102
  %104 = call i32 @mlx5_ib_read_user_wqe_common(%struct.ib_umem* %83, i8* %86, i32 %91, i32 0, i32 %94, i32 %97, i32 %100, i64 %103, i64* %17)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %82
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %6, align 4
  br label %114

109:                                              ; preds = %82
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = add i64 %110, %111
  %113 = load i64*, i64** %11, align 8
  store i64 %112, i64* %113, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %107, %79, %60, %55, %33
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @mlx5_ib_read_user_wqe_common(%struct.ib_umem*, i8*, i32, i32, i32, i32, i32, i64, i64*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
