; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c___mlx5_ib_qp_set_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c___mlx5_ib_qp_set_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.rdma_counter = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.mlx5_ib_qp_base }
%struct.mlx5_ib_qp_base = type { i32 }
%struct.mlx5_qp_context = type { i32 }

@rts2rts_qp_counters_set_id = common dso_local global i32 0, align 4
@MLX5_CMD_OP_RTS2RTS_QP = common dso_local global i32 0, align 4
@MLX5_QP_OPTPAR_COUNTER_SET_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.rdma_counter*)* @__mlx5_ib_qp_set_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx5_ib_qp_set_counter(%struct.ib_qp* %0, %struct.rdma_counter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.rdma_counter*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca %struct.mlx5_qp_context, align 4
  %9 = alloca %struct.mlx5_ib_qp_base*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.rdma_counter* %1, %struct.rdma_counter** %5, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlx5_ib_dev* @to_mdev(i32 %13)
  store %struct.mlx5_ib_dev* %14, %struct.mlx5_ib_dev** %6, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %16 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %15)
  store %struct.mlx5_ib_qp* %16, %struct.mlx5_ib_qp** %7, align 8
  %17 = bitcast %struct.mlx5_qp_context* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @rts2rts_qp_counters_set_id, align 4
  %22 = call i32 @MLX5_CAP_GEN(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.rdma_counter*, %struct.rdma_counter** %5, align 8
  %27 = icmp ne %struct.rdma_counter* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.rdma_counter*, %struct.rdma_counter** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %39

32:                                               ; preds = %25
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %34 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @mlx5_ib_get_counters_id(%struct.mlx5_ib_dev* %33, i64 %37)
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.mlx5_ib_qp_base* %42, %struct.mlx5_ib_qp_base** %9, align 8
  %43 = call i32 @cpu_to_be32(i32 16777215)
  %44 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 24
  %49 = call i32 @cpu_to_be32(i32 %48)
  %50 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MLX5_CMD_OP_RTS2RTS_QP, align 4
  %57 = load i32, i32* @MLX5_QP_OPTPAR_COUNTER_SET_ID, align 4
  %58 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %58, i32 0, i32 0
  %60 = call i32 @mlx5_core_qp_modify(i32 %55, i32 %56, i32 %57, %struct.mlx5_qp_context* %8, i32* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %39, %24
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_ib_get_counters_id(%struct.mlx5_ib_dev*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5_core_qp_modify(i32, i32, i32, %struct.mlx5_qp_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
