; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_client_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i32, i32, i32, i32, i32, i32, i64, i64, i32*, i32, %struct.dm_kcopyd_throttle*, i32, i32, i32, i32, i32 }
%struct.dm_kcopyd_throttle = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIN_JOBS = common dso_local global i32 0, align 4
@_job_cache = common dso_local global i32 0, align 4
@do_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kcopyd\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_kcopyd_client* @dm_kcopyd_client_create(%struct.dm_kcopyd_throttle* %0) #0 {
  %2 = alloca %struct.dm_kcopyd_client*, align 8
  %3 = alloca %struct.dm_kcopyd_throttle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_kcopyd_client*, align 8
  store %struct.dm_kcopyd_throttle* %0, %struct.dm_kcopyd_throttle** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dm_kcopyd_client* @kzalloc(i32 88, i32 %7)
  store %struct.dm_kcopyd_client* %8, %struct.dm_kcopyd_client** %6, align 8
  %9 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %10 = icmp ne %struct.dm_kcopyd_client* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.dm_kcopyd_client* @ERR_PTR(i32 %13)
  store %struct.dm_kcopyd_client* %14, %struct.dm_kcopyd_client** %2, align 8
  br label %120

15:                                               ; preds = %1
  %16 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %17 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %16, i32 0, i32 15
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %20 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %19, i32 0, i32 14
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %23 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %22, i32 0, i32 13
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %26 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %25, i32 0, i32 12
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %29 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %28, i32 0, i32 11
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %3, align 8
  %32 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %33 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %32, i32 0, i32 10
  store %struct.dm_kcopyd_throttle* %31, %struct.dm_kcopyd_throttle** %33, align 8
  %34 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %35 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %34, i32 0, i32 1
  %36 = load i32, i32* @MIN_JOBS, align 4
  %37 = load i32, i32* @_job_cache, align 4
  %38 = call i32 @mempool_init_slab_pool(i32* %35, i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %15
  br label %115

42:                                               ; preds = %15
  %43 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %44 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %43, i32 0, i32 9
  %45 = load i32, i32* @do_work, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %48 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47, i32 0)
  %49 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %50 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %52 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %111

58:                                               ; preds = %42
  %59 = call i32 (...) @dm_get_kcopyd_subjob_size()
  %60 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %61 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %63 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SECTOR_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = call i32 @DIV_ROUND_UP(i32 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %70 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %69, i32 0, i32 8
  store i32* null, i32** %70, align 8
  %71 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %72 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %71, i32 0, i32 6
  store i64 0, i64* %72, align 8
  %73 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %74 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %73, i32 0, i32 7
  store i64 0, i64* %74, align 8
  %75 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @client_reserve_pages(%struct.dm_kcopyd_client* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %58
  br label %106

81:                                               ; preds = %58
  %82 = call i32 (...) @dm_io_client_create()
  %83 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %84 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %86 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %92 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %4, align 4
  br label %103

95:                                               ; preds = %81
  %96 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %97 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %96, i32 0, i32 4
  %98 = call i32 @init_waitqueue_head(i32* %97)
  %99 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %100 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %99, i32 0, i32 3
  %101 = call i32 @atomic_set(i32* %100, i32 0)
  %102 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  store %struct.dm_kcopyd_client* %102, %struct.dm_kcopyd_client** %2, align 8
  br label %120

103:                                              ; preds = %90
  %104 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %105 = call i32 @client_free_pages(%struct.dm_kcopyd_client* %104)
  br label %106

106:                                              ; preds = %103, %80
  %107 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %108 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @destroy_workqueue(i32 %109)
  br label %111

111:                                              ; preds = %106, %55
  %112 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %113 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %112, i32 0, i32 1
  %114 = call i32 @mempool_exit(i32* %113)
  br label %115

115:                                              ; preds = %111, %41
  %116 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %6, align 8
  %117 = call i32 @kfree(%struct.dm_kcopyd_client* %116)
  %118 = load i32, i32* %4, align 4
  %119 = call %struct.dm_kcopyd_client* @ERR_PTR(i32 %118)
  store %struct.dm_kcopyd_client* %119, %struct.dm_kcopyd_client** %2, align 8
  br label %120

120:                                              ; preds = %115, %95, %11
  %121 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  ret %struct.dm_kcopyd_client* %121
}

declare dso_local %struct.dm_kcopyd_client* @kzalloc(i32, i32) #1

declare dso_local %struct.dm_kcopyd_client* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @dm_get_kcopyd_subjob_size(...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @client_reserve_pages(%struct.dm_kcopyd_client*, i32) #1

declare dso_local i32 @dm_io_client_create(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @client_free_pages(%struct.dm_kcopyd_client*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.dm_kcopyd_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
