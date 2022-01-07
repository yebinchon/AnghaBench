; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_srq_table }
%struct.mlx5_srq_table = type { i32 }
%struct.mlx5_core_srq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5_srq_attr = type { i32 }

@MLX5_RES_XSRQ = common dso_local global i32 0, align 4
@MLX5_RES_XRQ = common dso_local global i32 0, align 4
@MLX5_RES_SRQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_create_srq(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  %8 = alloca %struct.mlx5_srq_table*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 0
  store %struct.mlx5_srq_table* %11, %struct.mlx5_srq_table** %8, align 8
  %12 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 128, label %15
    i32 129, label %20
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @MLX5_RES_XSRQ, align 4
  %17 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load i32, i32* @MLX5_RES_XRQ, align 4
  %22 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @MLX5_RES_SRQ, align 4
  %27 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %32 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %33 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %34 = call i32 @create_srq_split(%struct.mlx5_ib_dev* %31, %struct.mlx5_core_srq* %32, %struct.mlx5_srq_attr* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %30
  %40 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @refcount_set(i32* %42, i32 1)
  %44 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @init_completion(i32* %46)
  %48 = load %struct.mlx5_srq_table*, %struct.mlx5_srq_table** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_srq_table, %struct.mlx5_srq_table* %48, i32 0, i32 0
  %50 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @xa_store_irq(i32* %49, i32 %52, %struct.mlx5_core_srq* %53, i32 %54)
  %56 = call i32 @xa_err(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  br label %61

60:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %66

61:                                               ; preds = %59
  %62 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %63 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %64 = call i32 @destroy_srq_split(%struct.mlx5_ib_dev* %62, %struct.mlx5_core_srq* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %60, %37
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @create_srq_split(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store_irq(i32*, i32, %struct.mlx5_core_srq*, i32) #1

declare dso_local i32 @destroy_srq_split(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
