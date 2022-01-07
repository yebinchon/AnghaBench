; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_writecache* }
%struct.dm_writecache = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @writecache_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_suspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %5 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %6 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %5, i32 0, i32 0
  %7 = load %struct.dm_writecache*, %struct.dm_writecache** %6, align 8
  store %struct.dm_writecache* %7, %struct.dm_writecache** %3, align 8
  %8 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %9 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %8, i32 0, i32 6
  %10 = call i32 @del_timer_sync(i32* %9)
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %12 = call i32 @wc_lock(%struct.dm_writecache* %11)
  %13 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %14 = call i32 @writecache_flush(%struct.dm_writecache* %13)
  %15 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %16 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %22 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %24 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %28 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %31 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %30, i32 0, i32 5
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %20, %1
  %34 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %35 = call i32 @wc_unlock(%struct.dm_writecache* %34)
  %36 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %37 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @flush_workqueue(i32 %38)
  %40 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %41 = call i32 @wc_lock(%struct.dm_writecache* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %46 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %33
  br label %50

50:                                               ; preds = %54, %49
  %51 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %52 = call i64 @writecache_wait_for_writeback(%struct.dm_writecache* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %50

55:                                               ; preds = %50
  %56 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %57 = call i64 @WC_MODE_PMEM(%struct.dm_writecache* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %61 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %64 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @persistent_memory_flush_cache(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %69 = call i32 @writecache_poison_lists(%struct.dm_writecache* %68)
  %70 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %71 = call i32 @wc_unlock(%struct.dm_writecache* %70)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @wc_lock(%struct.dm_writecache*) #1

declare dso_local i32 @writecache_flush(%struct.dm_writecache*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wc_unlock(%struct.dm_writecache*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i64 @writecache_wait_for_writeback(%struct.dm_writecache*) #1

declare dso_local i64 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @persistent_memory_flush_cache(i32, i32) #1

declare dso_local i32 @writecache_poison_lists(%struct.dm_writecache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
