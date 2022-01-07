; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_get_rx_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_get_rx_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32 }
%struct.ib_qp_init_attr = type { i64, i64 }

@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@MLX5_IB_QPT_DCI = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@MLX5_SRQ_RQ = common dso_local global i32 0, align 4
@MLX5_ZERO_LEN_RQ = common dso_local global i32 0, align 4
@MLX5_NON_ZERO_RQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_qp_init_attr*)* @get_rx_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rx_type(%struct.mlx5_ib_qp* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %6 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLX5_IB_QPT_DCI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %24 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16, %10, %2
  %29 = load i32, i32* @MLX5_SRQ_RQ, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %22
  %31 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @MLX5_ZERO_LEN_RQ, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @MLX5_NON_ZERO_RQ, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
