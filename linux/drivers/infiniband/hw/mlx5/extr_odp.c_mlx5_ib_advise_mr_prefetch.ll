; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_advise_mr_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_advise_mr_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_sge = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.prefetch_mr_work = type { i32, i32, i32, %struct.ib_pd*, i32 }

@MLX5_PF_FLAGS_PREFETCH = common dso_local global i32 0, align 4
@IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH = common dso_local global i32 0, align 4
@MLX5_PF_FLAGS_DOWNGRADE = common dso_local global i32 0, align 4
@IB_UVERBS_ADVISE_MR_FLAG_FLUSH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlx5_ib_prefetch_mr_work = common dso_local global i32 0, align 4
@system_unbound_wq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_advise_mr_prefetch(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_sge* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_sge*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_ib_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.prefetch_mr_work*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ib_sge* %3, %struct.ib_sge** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx5_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx5_ib_dev* %20, %struct.mlx5_ib_dev** %12, align 8
  %21 = load i32, i32* @MLX5_PF_FLAGS_PREFETCH, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @MLX5_PF_FLAGS_DOWNGRADE, align 4
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %25, %5
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IB_UVERBS_ADVISE_MR_FLAG_FLUSH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @mlx5_ib_prefetch_sg_list(%struct.ib_pd* %35, i32 %36, %struct.ib_sge* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %105

40:                                               ; preds = %29
  %41 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %42 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @struct_size(%struct.prefetch_mr_work* %41, %struct.ib_sge* %42, i32 %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.prefetch_mr_work* @kvzalloc(i32 %44, i32 %45)
  store %struct.prefetch_mr_work* %46, %struct.prefetch_mr_work** %14, align 8
  %47 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %48 = icmp ne %struct.prefetch_mr_work* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %105

52:                                               ; preds = %40
  %53 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %54 = getelementptr inbounds %struct.prefetch_mr_work, %struct.prefetch_mr_work* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i32 %55, %struct.ib_sge* %56, i32 %60)
  %62 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %63 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %64 = getelementptr inbounds %struct.prefetch_mr_work, %struct.prefetch_mr_work* %63, i32 0, i32 3
  store %struct.ib_pd* %62, %struct.ib_pd** %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %67 = getelementptr inbounds %struct.prefetch_mr_work, %struct.prefetch_mr_work* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %70 = getelementptr inbounds %struct.prefetch_mr_work, %struct.prefetch_mr_work* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %72 = getelementptr inbounds %struct.prefetch_mr_work, %struct.prefetch_mr_work* %71, i32 0, i32 2
  %73 = load i32, i32* @mlx5_ib_prefetch_mr_work, align 4
  %74 = call i32 @INIT_WORK(i32* %72, i32 %73)
  %75 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %75, i32 0, i32 0
  %77 = call i32 @srcu_read_lock(i32* %76)
  store i32 %77, i32* %16, align 4
  %78 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %79 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @num_pending_prefetch_inc(%struct.ib_pd* %78, %struct.ib_sge* %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %52
  %85 = load i32, i32* @system_unbound_wq, align 4
  %86 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %87 = getelementptr inbounds %struct.prefetch_mr_work, %struct.prefetch_mr_work* %86, i32 0, i32 2
  %88 = call i32 @queue_work(i32 %85, i32* %87)
  br label %92

89:                                               ; preds = %52
  %90 = load %struct.prefetch_mr_work*, %struct.prefetch_mr_work** %14, align 8
  %91 = call i32 @kvfree(%struct.prefetch_mr_work* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %94 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @srcu_read_unlock(i32* %94, i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 0, %99 ], [ %102, %100 ]
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %49, %34
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_prefetch_sg_list(%struct.ib_pd*, i32, %struct.ib_sge*, i32) #1

declare dso_local %struct.prefetch_mr_work* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.prefetch_mr_work*, %struct.ib_sge*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ib_sge*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @num_pending_prefetch_inc(%struct.ib_pd*, %struct.ib_sge*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kvfree(%struct.prefetch_mr_work*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
