; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_cached_dev_writeback_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_cached_dev_writeback_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"bcache_writeback_wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bch_writeback_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"bcache_writeback\00", align 1
@BCACHE_DEV_WB_RUNNING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_cached_dev_writeback_start(%struct.cached_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cached_dev*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %3, align 8
  %4 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %5 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %4, i32 0)
  %6 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %7 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %17 = call i32 @cached_dev_get(%struct.cached_dev* %16)
  %18 = load i32, i32* @bch_writeback_thread, align 4
  %19 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %20 = call i32 @kthread_create(i32 %18, %struct.cached_dev* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %15
  %29 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %30 = call i32 @cached_dev_put(%struct.cached_dev* %29)
  %31 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %32 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @destroy_workqueue(i32 %33)
  %35 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %36 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %58

39:                                               ; preds = %15
  %40 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %41 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @BCACHE_DEV_WB_RUNNING, align 4
  %43 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %44 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @test_and_set_bit(i32 %42, i32* %45)
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %49 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %48, i32 0, i32 2
  %50 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %51 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @schedule_delayed_work(i32* %49, i32 %54)
  %56 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %57 = call i32 @bch_writeback_queue(%struct.cached_dev* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %39, %28, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @cached_dev_get(%struct.cached_dev*) #1

declare dso_local i32 @kthread_create(i32, %struct.cached_dev*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @cached_dev_put(%struct.cached_dev*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @bch_writeback_queue(%struct.cached_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
