; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_bring_down_rss_rwqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_bring_down_rss_rwqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_rwq_ind_table = type { i32, %struct.ib_wq** }
%struct.ib_wq = type { i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_qp = type { i32, i32 }
%struct.ib_qp = type { i32 }

@IB_WQS_RDY = common dso_local global i64 0, align 8
@IB_WQS_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to reverse WQN=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_rwq_ind_table*, %struct.ib_udata*)* @bring_down_rss_rwqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bring_down_rss_rwqs(%struct.ib_rwq_ind_table* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_rwq_ind_table*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wq*, align 8
  %7 = alloca %struct.mlx4_ib_qp*, align 8
  store %struct.ib_rwq_ind_table* %0, %struct.ib_rwq_ind_table** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %11 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %8
  %16 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %17 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %16, i32 0, i32 1
  %18 = load %struct.ib_wq**, %struct.ib_wq*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ib_wq*, %struct.ib_wq** %18, i64 %20
  %22 = load %struct.ib_wq*, %struct.ib_wq** %21, align 8
  store %struct.ib_wq* %22, %struct.ib_wq** %6, align 8
  %23 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %24 = bitcast %struct.ib_wq* %23 to %struct.ib_qp*
  %25 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %24)
  store %struct.mlx4_ib_qp* %25, %struct.mlx4_ib_qp** %7, align 8
  %26 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %51

33:                                               ; preds = %15
  %34 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %35 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IB_WQS_RDY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %41 = load i32, i32* @IB_WQS_RESET, align 4
  %42 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %43 = call i64 @_mlx4_ib_modify_wq(%struct.ib_wq* %40, i32 %41, %struct.ib_udata* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %47 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  br label %51

51:                                               ; preds = %50, %33, %15
  %52 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %8

62:                                               ; preds = %8
  ret void
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @_mlx4_ib_modify_wq(%struct.ib_wq*, i32, %struct.ib_udata*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
