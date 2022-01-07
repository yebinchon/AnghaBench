; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_rereg_umr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_rereg_umr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_umr_wr = type { i32, %struct.TYPE_4__, %struct.ib_pd*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MLX5_IB_SEND_UMR_FAIL_IF_FREE = common dso_local global i32 0, align 4
@MLX5_IB_WR_UMR = common dso_local global i32 0, align 4
@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, i32)* @rereg_umr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rereg_umr(%struct.ib_pd* %0, %struct.mlx5_ib_mr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.mlx5_ib_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_umr_wr, align 8
  %11 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %13 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mlx5_ib_dev* @to_mdev(i32 %14)
  store %struct.mlx5_ib_dev* %15, %struct.mlx5_ib_dev** %9, align 8
  %16 = bitcast %struct.mlx5_umr_wr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* @MLX5_IB_SEND_UMR_FAIL_IF_FREE, align 4
  %18 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %10, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MLX5_IB_WR_UMR, align 4
  %21 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %10, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %10, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IB_MR_REREG_PD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32, %4
  %38 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %10, i32 0, i32 2
  store %struct.ib_pd* %38, %struct.ib_pd** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS, align 4
  %43 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %10, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %49 = call i32 @mlx5_ib_post_send_wait(%struct.mlx5_ib_dev* %48, %struct.mlx5_umr_wr* %10)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlx5_ib_post_send_wait(%struct.mlx5_ib_dev*, %struct.mlx5_umr_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
