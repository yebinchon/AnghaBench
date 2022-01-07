; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_gc_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_gc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, i32 }

@CACHE_SET_IO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bch_gc_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_gc_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cache_set*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cache_set*
  store %struct.cache_set* %5, %struct.cache_set** %3, align 8
  br label %6

6:                                                ; preds = %1, %35
  %7 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %8 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 (...) @kthread_should_stop()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %14 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %15 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %14, i32 0, i32 0
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %20 = call i64 @gc_should_run(%struct.cache_set* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %12, %6
  %23 = phi i1 [ true, %12 ], [ true, %6 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event_interruptible(i32 %9, i32 %24)
  %26 = call i64 (...) @kthread_should_stop()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %30 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %31 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %37 = call i32 @set_gc_sectors(%struct.cache_set* %36)
  %38 = load %struct.cache_set*, %struct.cache_set** %3, align 8
  %39 = call i32 @bch_btree_gc(%struct.cache_set* %38)
  br label %6

40:                                               ; preds = %34
  %41 = call i32 (...) @wait_for_kthread_stop()
  ret i32 0
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @gc_should_run(%struct.cache_set*) #1

declare dso_local i32 @set_gc_sectors(%struct.cache_set*) #1

declare dso_local i32 @bch_btree_gc(%struct.cache_set*) #1

declare dso_local i32 @wait_for_kthread_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
