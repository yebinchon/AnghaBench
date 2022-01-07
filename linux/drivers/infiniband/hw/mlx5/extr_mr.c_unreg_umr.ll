; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_unreg_umr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_unreg_umr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_dev = type { i64 }
%struct.mlx5_ib_mr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_umr_wr = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@MLX5_IB_SEND_UMR_DISABLE_MR = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS = common dso_local global i32 0, align 4
@MLX5_IB_WR_UMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*)* @unreg_umr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unreg_umr(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_mr*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_umr_wr, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %5, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %6, align 8
  %11 = bitcast %struct.mlx5_umr_wr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 20, i1 false)
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* @MLX5_IB_SEND_UMR_DISABLE_MR, align 4
  %20 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %7, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MLX5_IB_WR_UMR, align 4
  %25 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %7, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %7, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %39 = call i32 @mlx5_ib_post_send_wait(%struct.mlx5_ib_dev* %38, %struct.mlx5_umr_wr* %7)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %18, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_ib_post_send_wait(%struct.mlx5_ib_dev*, %struct.mlx5_umr_wr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
