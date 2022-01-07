; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_allocator_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_allocator_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bch_allocator_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_allocator_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cache*
  store %struct.cache* %6, %struct.cache** %3, align 8
  %7 = load %struct.cache*, %struct.cache** %3, align 8
  %8 = getelementptr inbounds %struct.cache, %struct.cache* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %1, %112
  br label %13

13:                                               ; preds = %12, %50
  %14 = load %struct.cache*, %struct.cache** %3, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @fifo_pop(i32* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %66

20:                                               ; preds = %13
  %21 = load %struct.cache*, %struct.cache** %3, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.cache*, %struct.cache** %3, align 8
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.cache*, %struct.cache** %3, align 8
  %32 = getelementptr inbounds %struct.cache, %struct.cache* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cache*, %struct.cache** %3, align 8
  %35 = getelementptr inbounds %struct.cache, %struct.cache* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @bucket_to_sector(%struct.TYPE_4__* %36, i64 %37)
  %39 = load %struct.cache*, %struct.cache** %3, align 8
  %40 = getelementptr inbounds %struct.cache, %struct.cache* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @blkdev_issue_discard(i32 %33, i32 %38, i32 %42, i32 %43, i32 0)
  %45 = load %struct.cache*, %struct.cache** %3, align 8
  %46 = getelementptr inbounds %struct.cache, %struct.cache* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = call i32 @mutex_lock(i32* %48)
  br label %50

50:                                               ; preds = %25, %20
  %51 = load %struct.cache*, %struct.cache** %3, align 8
  %52 = load %struct.cache*, %struct.cache** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @bch_allocator_push(%struct.cache* %52, i64 %53)
  %55 = call i32 @allocator_wait(%struct.cache* %51, i32 %54)
  %56 = load %struct.cache*, %struct.cache** %3, align 8
  %57 = getelementptr inbounds %struct.cache, %struct.cache* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = call i32 @wake_up(i32* %59)
  %61 = load %struct.cache*, %struct.cache** %3, align 8
  %62 = getelementptr inbounds %struct.cache, %struct.cache* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = call i32 @wake_up(i32* %64)
  br label %13

66:                                               ; preds = %19
  br label %67

67:                                               ; preds = %108, %66
  %68 = load %struct.cache*, %struct.cache** %3, align 8
  %69 = load %struct.cache*, %struct.cache** %3, align 8
  %70 = getelementptr inbounds %struct.cache, %struct.cache* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.cache*, %struct.cache** %3, align 8
  %77 = getelementptr inbounds %struct.cache, %struct.cache* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %67
  %82 = phi i1 [ false, %67 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @allocator_wait(%struct.cache* %68, i32 %83)
  %85 = load %struct.cache*, %struct.cache** %3, align 8
  %86 = call i32 @invalidate_buckets(%struct.cache* %85)
  %87 = load %struct.cache*, %struct.cache** %3, align 8
  %88 = load %struct.cache*, %struct.cache** %3, align 8
  %89 = getelementptr inbounds %struct.cache, %struct.cache* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = call i32 @atomic_read(i32* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @allocator_wait(%struct.cache* %87, i32 %95)
  %97 = load %struct.cache*, %struct.cache** %3, align 8
  %98 = getelementptr inbounds %struct.cache, %struct.cache* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i64 @CACHE_SYNC(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %81
  %104 = load %struct.cache*, %struct.cache** %3, align 8
  %105 = getelementptr inbounds %struct.cache, %struct.cache* %104, i32 0, i32 0
  %106 = call i32 @fifo_full(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %67

109:                                              ; preds = %103
  %110 = load %struct.cache*, %struct.cache** %3, align 8
  %111 = call i32 @bch_prio_write(%struct.cache* %110)
  br label %112

112:                                              ; preds = %109, %81
  br label %12

113:                                              ; No predecessors!
  %114 = call i32 (...) @wait_for_kthread_stop()
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fifo_pop(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blkdev_issue_discard(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bucket_to_sector(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @allocator_wait(%struct.cache*, i32) #1

declare dso_local i32 @bch_allocator_push(%struct.cache*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @invalidate_buckets(%struct.cache*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @CACHE_SYNC(i32*) #1

declare dso_local i32 @fifo_full(i32*) #1

declare dso_local i32 @bch_prio_write(%struct.cache*) #1

declare dso_local i32 @wait_for_kthread_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
