; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_mr_cache_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_mr_cache_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_MR_CACHE_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_mr_cache_cleanup(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %5 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @flush_workqueue(i32 %18)
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %21 = call i32 @mlx5_mr_cache_debugfs_cleanup(%struct.mlx5_ib_dev* %20)
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %22, i32 0, i32 2
  %24 = call i32 @mlx5_cmd_cleanup_async_ctx(i32* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %33, %11
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAX_MR_CACHE_ENTRIES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @clean_keys(%struct.mlx5_ib_dev* %30, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @destroy_workqueue(i32 %40)
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 0
  %44 = call i32 @del_timer_sync(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mlx5_mr_cache_debugfs_cleanup(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_cmd_cleanup_async_ctx(i32*) #1

declare dso_local i32 @clean_keys(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
