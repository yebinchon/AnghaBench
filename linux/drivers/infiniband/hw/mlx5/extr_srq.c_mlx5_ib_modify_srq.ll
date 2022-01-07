; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq.c_mlx5_ib_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq.c_mlx5_ib_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i64 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_srq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_SRQ_MAX_WR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SRQ_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca %struct.ib_srq_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.mlx5_ib_srq*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %6, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %13 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %14 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx5_ib_dev* @to_mdev(i32 %15)
  store %struct.mlx5_ib_dev* %16, %struct.mlx5_ib_dev** %10, align 8
  %17 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %18 = call %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq* %17)
  store %struct.mlx5_ib_srq* %18, %struct.mlx5_ib_srq** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @IB_SRQ_MAX_WR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %63

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IB_SRQ_LIMIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %33 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %11, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %63

43:                                               ; preds = %31
  %44 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %11, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %48 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %11, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %48, i32 0, i32 1
  %50 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %51 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mlx5_cmd_arm_srq(%struct.mlx5_ib_dev* %47, %struct.TYPE_2__* %49, i64 %52, i32 1)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %11, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %26
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59, %40, %23
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_cmd_arm_srq(%struct.mlx5_ib_dev*, %struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
