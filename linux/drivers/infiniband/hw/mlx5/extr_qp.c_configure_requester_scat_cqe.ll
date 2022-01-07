; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_configure_requester_scat_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_configure_requester_scat_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_qp_init_attr = type { i32, i64, i32 }
%struct.mlx5_ib_create_qp = type { i32 }

@IB_QPT_UC = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_ALLOW_SCATTER_CQE = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@cs_req = common dso_local global i32 0, align 4
@MLX5_REQ_SCAT_DATA64_CQE = common dso_local global i32 0, align 4
@MLX5_IB_QPT_DCI = common dso_local global i64 0, align 8
@dc_req_scat_data_cqe = common dso_local global i32 0, align 4
@MLX5_REQ_SCAT_DATA32_CQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.ib_qp_init_attr*, %struct.mlx5_ib_create_qp*, i8*)* @configure_requester_scat_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_requester_scat_cqe(%struct.mlx5_ib_dev* %0, %struct.ib_qp_init_attr* %1, %struct.mlx5_ib_create_qp* %2, i8* %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.mlx5_ib_create_qp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.mlx5_ib_create_qp* %2, %struct.mlx5_ib_create_qp** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @IB_QPT_UC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IB_QPT_UD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  br label %75

23:                                               ; preds = %18
  %24 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %7, align 8
  %25 = icmp ne %struct.mlx5_ib_create_qp* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.mlx5_ib_create_qp*, %struct.mlx5_ib_create_qp** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_create_qp, %struct.mlx5_ib_create_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX5_QP_FLAG_ALLOW_SCATTER_CQE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %75

42:                                               ; preds = %35, %32
  %43 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %44 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mlx5_ib_get_cqe_size(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @cs_req, align 4
  %53 = load i32, i32* @MLX5_REQ_SCAT_DATA64_CQE, align 4
  %54 = call i32 @MLX5_SET(i8* %50, i8* %51, i32 %52, i32 %53)
  br label %75

55:                                               ; preds = %42
  %56 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @MLX5_IB_QPT_DCI, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @dc_req_scat_data_cqe, align 4
  %67 = call i64 @MLX5_CAP_GEN(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62, %55
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @cs_req, align 4
  %73 = load i32, i32* @MLX5_REQ_SCAT_DATA32_CQE, align 4
  %74 = call i32 @MLX5_SET(i8* %70, i8* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %22, %41, %49, %69, %62
  ret void
}

declare dso_local i32 @mlx5_ib_get_cqe_size(i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
