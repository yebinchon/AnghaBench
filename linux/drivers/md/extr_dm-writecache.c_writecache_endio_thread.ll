; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_endio_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_endio_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i32, %struct.list_head }
%struct.list_head = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.list_head* }
%struct.TYPE_3__ = type { %struct.list_head* }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @writecache_endio_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writecache_endio_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca %struct.list_head, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dm_writecache*
  store %struct.dm_writecache* %6, %struct.dm_writecache** %3, align 8
  br label %7

7:                                                ; preds = %1, %28, %71
  %8 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %9 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %8, i32 0, i32 1
  %10 = call i32 @raw_spin_lock_irq(i32* %9)
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %12 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %11, i32 0, i32 2
  %13 = call i32 @list_empty(%struct.list_head* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  br label %30

16:                                               ; preds = %7
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %20 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %19, i32 0, i32 1
  %21 = call i32 @raw_spin_unlock_irq(i32* %20)
  %22 = call i32 (...) @kthread_should_stop()
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @TASK_RUNNING, align 4
  %27 = call i32 @set_current_state(i32 %26)
  br label %76

28:                                               ; preds = %16
  %29 = call i32 (...) @schedule()
  br label %7

30:                                               ; preds = %15
  %31 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %32 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %31, i32 0, i32 2
  %33 = bitcast %struct.list_head* %4 to i8*
  %34 = bitcast %struct.list_head* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.list_head* %4, %struct.list_head** %37, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.list_head* %4, %struct.list_head** %40, align 8
  %41 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %42 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(%struct.list_head* %42)
  %44 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %45 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %44, i32 0, i32 1
  %46 = call i32 @raw_spin_unlock_irq(i32* %45)
  %47 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %48 = call i32 @WC_MODE_FUA(%struct.dm_writecache* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %30
  %51 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %52 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %53 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @writecache_disk_flush(%struct.dm_writecache* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %30
  %57 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %58 = call i32 @wc_lock(%struct.dm_writecache* %57)
  %59 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %60 = call i64 @WC_MODE_PMEM(%struct.dm_writecache* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %64 = call i32 @__writecache_endio_pmem(%struct.dm_writecache* %63, %struct.list_head* %4)
  br label %71

65:                                               ; preds = %56
  %66 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %67 = call i32 @__writecache_endio_ssd(%struct.dm_writecache* %66, %struct.list_head* %4)
  %68 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %69 = load i32, i32* @READ, align 4
  %70 = call i32 @writecache_wait_for_ios(%struct.dm_writecache* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %73 = call i32 @writecache_commit_flushed(%struct.dm_writecache* %72)
  %74 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %75 = call i32 @wc_unlock(%struct.dm_writecache* %74)
  br label %7

76:                                               ; preds = %25
  ret i32 0
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @WC_MODE_FUA(%struct.dm_writecache*) #1

declare dso_local i32 @writecache_disk_flush(%struct.dm_writecache*, i32) #1

declare dso_local i32 @wc_lock(%struct.dm_writecache*) #1

declare dso_local i64 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @__writecache_endio_pmem(%struct.dm_writecache*, %struct.list_head*) #1

declare dso_local i32 @__writecache_endio_ssd(%struct.dm_writecache*, %struct.list_head*) #1

declare dso_local i32 @writecache_wait_for_ios(%struct.dm_writecache*, i32) #1

declare dso_local i32 @writecache_commit_flushed(%struct.dm_writecache*) #1

declare dso_local i32 @wc_unlock(%struct.dm_writecache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
