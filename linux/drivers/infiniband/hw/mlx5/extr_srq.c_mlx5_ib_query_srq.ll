; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq.c_mlx5_ib_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq.c_mlx5_ib_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i64, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mlx5_srq_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_srq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_srq_attr*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %10 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %11 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx5_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %6, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = call %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq* %14)
  store %struct.mlx5_ib_srq* %15, %struct.mlx5_ib_srq** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5_srq_attr* @kzalloc(i32 4, i32 %16)
  store %struct.mlx5_srq_attr* %17, %struct.mlx5_srq_attr** %9, align 8
  %18 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %19 = icmp ne %struct.mlx5_srq_attr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %25 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %25, i32 0, i32 0
  %27 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %28 = call i32 @mlx5_cmd_query_srq(%struct.mlx5_ib_dev* %24, %struct.TYPE_2__* %26, %struct.mlx5_srq_attr* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %50 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %32, %31
  %52 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %9, align 8
  %53 = call i32 @kfree(%struct.mlx5_srq_attr* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local %struct.mlx5_srq_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_cmd_query_srq(%struct.mlx5_ib_dev*, %struct.TYPE_2__*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @kfree(%struct.mlx5_srq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
