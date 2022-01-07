; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_ctx = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"mlx4_ib_mcg%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_mcg_port_init(%struct.mlx4_ib_demux_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %4 = alloca [20 x i8], align 16
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %3, align 8
  %5 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %5, i32 0, i32 6
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %9 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %15 = call i32 @alloc_ordered_workqueue(i8* %13, i32 %14)
  %16 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %26, i32 0, i32 4
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load i32, i32* @RB_ROOT, align 4
  %30 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %32, i32 0, i32 2
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
