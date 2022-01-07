; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_drain_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_drain_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.ib_cq* }
%struct.ib_cq = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.mlx4_ib_drain_cqe = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_recv_wr = type { %struct.TYPE_4__* }
%struct.mlx4_ib_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to drain recv queue: %d\0A\00", align 1
@mlx4_ib_drain_qp_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_drain_rq(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_qp_attr, align 4
  %5 = alloca %struct.mlx4_ib_drain_cqe, align 4
  %6 = alloca %struct.ib_recv_wr, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_dev*, align 8
  %10 = alloca %struct.mlx4_dev*, align 8
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
  %20 = call %struct.mlx4_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx4_ib_dev* %20, %struct.mlx4_ib_dev** %9, align 8
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %22, align 8
  store %struct.mlx4_dev* %23, %struct.mlx4_dev** %10, align 8
  %24 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %25 = load i32, i32* @IB_QP_STATE, align 4
  %26 = call i32 @ib_modify_qp(%struct.ib_qp* %24, %struct.ib_qp_attr* %4, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @WARN_ONCE(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %61

41:                                               ; preds = %29, %1
  %42 = getelementptr inbounds %struct.mlx4_ib_drain_cqe, %struct.mlx4_ib_drain_cqe* %5, i32 0, i32 1
  %43 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 0
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %43, align 8
  %44 = load i32, i32* @mlx4_ib_drain_qp_done, align 4
  %45 = getelementptr inbounds %struct.mlx4_ib_drain_cqe, %struct.mlx4_ib_drain_cqe* %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.mlx4_ib_drain_cqe, %struct.mlx4_ib_drain_cqe* %5, i32 0, i32 0
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %50 = call i32 @_mlx4_ib_post_recv(%struct.ib_qp* %49, %struct.ib_recv_wr* %6, %struct.ib_recv_wr** %7, i32 1)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @WARN_ONCE(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %41
  %58 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %59 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %9, align 8
  %60 = call i32 @handle_drain_completion(%struct.ib_cq* %58, %struct.mlx4_ib_drain_cqe* %5, %struct.mlx4_ib_dev* %59)
  br label %61

61:                                               ; preds = %57, %53, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #2

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #2

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @_mlx4_ib_post_recv(%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**, i32) #2

declare dso_local i32 @handle_drain_completion(%struct.ib_cq*, %struct.mlx4_ib_drain_cqe*, %struct.mlx4_ib_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
