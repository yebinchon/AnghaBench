; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c__mlx4_ib_modify_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c__mlx4_ib_modify_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ib_qp = type { i32 }

@IB_WQS_RDY = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@MLX4_IB_RWQ_SRC = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WQN=0x%06x failed to apply RST->INIT on the HW QP\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"WQN=0x%06x failed with reverting HW's resources failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_wq*, i32, %struct.ib_udata*)* @_mlx4_ib_modify_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx4_ib_modify_wq(%struct.ib_wq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_wq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_qp_attr, align 4
  store %struct.ib_wq* %0, %struct.ib_wq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %14 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %15 = bitcast %struct.ib_wq* %14 to %struct.ib_qp*
  %16 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %15)
  store %struct.mlx4_ib_qp* %16, %struct.mlx4_ib_qp** %8, align 8
  %17 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ib_wq2qp_state(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ib_wq2qp_state(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IB_WQS_RDY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = bitcast %struct.ib_qp_attr* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 4, i1 false)
  %33 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %8, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %13, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IB_QP_PORT, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %39 = load i32, i32* @MLX4_IB_RWQ_SRC, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @IB_QPS_RESET, align 4
  %42 = load i32, i32* @IB_QPS_INIT, align 4
  %43 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %44 = call i32 @__mlx4_ib_modify_qp(%struct.ib_wq* %38, i32 %39, %struct.ib_qp_attr* %13, i32 %40, i32 %41, i32 %42, %struct.ib_udata* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %49 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %91

53:                                               ; preds = %31
  %54 = load i32, i32* @IB_QPS_INIT, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %27
  store i32 0, i32* %11, align 4
  %56 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %57 = load i32, i32* @MLX4_IB_RWQ_SRC, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %62 = call i32 @__mlx4_ib_modify_qp(%struct.ib_wq* %56, i32 %57, %struct.ib_qp_attr* null, i32 %58, i32 %59, i32 %60, %struct.ib_udata* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @IB_QPS_INIT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* @IB_QPS_RESET, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %72 = load i32, i32* @MLX4_IB_RWQ_SRC, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @IB_QPS_INIT, align 4
  %75 = load i32, i32* @IB_QPS_RESET, align 4
  %76 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %77 = call i32 @__mlx4_ib_modify_qp(%struct.ib_wq* %71, i32 %72, %struct.ib_qp_attr* null, i32 %73, i32 %74, i32 %75, %struct.ib_udata* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %81 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @IB_QPS_INIT, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %79, %69
  br label %86

86:                                               ; preds = %85, %65, %55
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %8, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %47, %26
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @ib_wq2qp_state(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @__mlx4_ib_modify_qp(%struct.ib_wq*, i32, %struct.ib_qp_attr*, i32, i32, i32, %struct.ib_udata*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
