; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_drain_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_drain_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.ib_cq* }
%struct.ib_cq = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.mlx5_ib_drain_cqe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_recv_wr = type { %struct.TYPE_2__* }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to drain recv queue: %d\0A\00", align 1
@mlx5_ib_drain_qp_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_drain_rq(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_qp_attr, align 4
  %5 = alloca %struct.mlx5_ib_drain_cqe, align 4
  %6 = alloca %struct.ib_recv_wr, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 1
  %13 = load %struct.ib_cq*, %struct.ib_cq** %12, align 8
  store %struct.ib_cq* %13, %struct.ib_cq** %3, align 8
  %14 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 0
  %15 = load i32, i32* @IB_QPS_ERR, align 4
  store i32 %15, i32* %14, align 4
  %16 = bitcast %struct.ib_recv_wr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.mlx5_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx5_ib_dev* %20, %struct.mlx5_ib_dev** %9, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  store %struct.mlx5_core_dev* %23, %struct.mlx5_core_dev** %10, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %25 = load i32, i32* @IB_QP_STATE, align 4
  %26 = call i32 @ib_modify_qp(%struct.ib_qp* %24, %struct.ib_qp_attr* %4, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WARN_ONCE(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %59

39:                                               ; preds = %29, %1
  %40 = getelementptr inbounds %struct.mlx5_ib_drain_cqe, %struct.mlx5_ib_drain_cqe* %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 0
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %41, align 8
  %42 = load i32, i32* @mlx5_ib_drain_qp_done, align 4
  %43 = getelementptr inbounds %struct.mlx5_ib_drain_cqe, %struct.mlx5_ib_drain_cqe* %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.mlx5_ib_drain_cqe, %struct.mlx5_ib_drain_cqe* %5, i32 0, i32 0
  %46 = call i32 @init_completion(i32* %45)
  %47 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %48 = call i32 @_mlx5_ib_post_recv(%struct.ib_qp* %47, %struct.ib_recv_wr* %6, %struct.ib_recv_wr** %7, i32 1)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @WARN_ONCE(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %59

55:                                               ; preds = %39
  %56 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %57 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %58 = call i32 @handle_drain_completion(%struct.ib_cq* %56, %struct.mlx5_ib_drain_cqe* %5, %struct.mlx5_ib_dev* %57)
  br label %59

59:                                               ; preds = %55, %51, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #2

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #2

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @_mlx5_ib_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**, i32) #2

declare dso_local i32 @handle_drain_completion(%struct.ib_cq*, %struct.mlx5_ib_drain_cqe*, %struct.mlx5_ib_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
