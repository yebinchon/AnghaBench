; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, i32, i32 }
%struct.gc_stat = type { i32, i32 }
%struct.closure = type { i32 }
%struct.btree_op = type { i32 }

@SHRT_MAX = common dso_local global i32 0, align 4
@gc_root = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GC_SLEEP_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gc failed!\00", align 1
@CACHE_SET_IO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_set*)* @bch_btree_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_btree_gc(%struct.cache_set* %0) #0 {
  %2 = alloca %struct.cache_set*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gc_stat, align 4
  %5 = alloca %struct.closure, align 4
  %6 = alloca %struct.btree_op, align 4
  %7 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %2, align 8
  %8 = call i32 (...) @local_clock()
  store i32 %8, i32* %7, align 4
  %9 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %10 = call i32 @trace_bcache_gc_start(%struct.cache_set* %9)
  %11 = call i32 @memset(%struct.gc_stat* %4, i32 0, i32 8)
  %12 = call i32 @closure_init_stack(%struct.closure* %5)
  %13 = load i32, i32* @SHRT_MAX, align 4
  %14 = call i32 @bch_btree_op_init(%struct.btree_op* %6, i32 %13)
  %15 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %16 = call i32 @btree_gc_start(%struct.cache_set* %15)
  br label %17

17:                                               ; preds = %48, %1
  %18 = load i32, i32* @gc_root, align 4
  %19 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %20 = call i32 @btree_root(i32 %18, %struct.cache_set* %19, %struct.btree_op* %6, %struct.closure* %5, %struct.gc_stat* %4)
  store i32 %20, i32* %3, align 4
  %21 = call i32 @closure_sync(%struct.closure* %5)
  %22 = call i32 (...) @cond_resched()
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @GC_SLEEP_MS, align 4
  %29 = call i32 @msecs_to_jiffies(i32 %28)
  %30 = call i32 @schedule_timeout_interruptible(i32 %29)
  br label %37

31:                                               ; preds = %17
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %43 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %44 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %43, i32 0, i32 2
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %41, %38
  %49 = phi i1 [ false, %38 ], [ %47, %41 ]
  br i1 %49, label %17, label %50

50:                                               ; preds = %48
  %51 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %52 = call i32 @bch_btree_gc_finish(%struct.cache_set* %51)
  %53 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %54 = call i32 @wake_up_allocators(%struct.cache_set* %53)
  %55 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %56 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %55, i32 0, i32 1
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @bch_time_stats_update(i32* %56, i32 %57)
  %59 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = getelementptr inbounds %struct.gc_stat, %struct.gc_stat* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 9
  store i32 %66, i32* %64, align 4
  %67 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %68 = call i32 @bch_update_bucket_in_use(%struct.cache_set* %67, %struct.gc_stat* %4)
  %69 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %70 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %69, i32 0, i32 0
  %71 = call i32 @memcpy(i32* %70, %struct.gc_stat* %4, i32 8)
  %72 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %73 = call i32 @trace_bcache_gc_end(%struct.cache_set* %72)
  %74 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %75 = call i32 @bch_moving_gc(%struct.cache_set* %74)
  ret void
}

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @trace_bcache_gc_start(%struct.cache_set*) #1

declare dso_local i32 @memset(%struct.gc_stat*, i32, i32) #1

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @bch_btree_op_init(%struct.btree_op*, i32) #1

declare dso_local i32 @btree_gc_start(%struct.cache_set*) #1

declare dso_local i32 @btree_root(i32, %struct.cache_set*, %struct.btree_op*, %struct.closure*, %struct.gc_stat*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bch_btree_gc_finish(%struct.cache_set*) #1

declare dso_local i32 @wake_up_allocators(%struct.cache_set*) #1

declare dso_local i32 @bch_time_stats_update(i32*, i32) #1

declare dso_local i32 @bch_update_bucket_in_use(%struct.cache_set*, %struct.gc_stat*) #1

declare dso_local i32 @memcpy(i32*, %struct.gc_stat*, i32) #1

declare dso_local i32 @trace_bcache_gc_end(%struct.cache_set*) #1

declare dso_local i32 @bch_moving_gc(%struct.cache_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
