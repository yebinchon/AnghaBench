; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @writecache_flush_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writecache_flush_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca %struct.bio*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dm_writecache*
  store %struct.dm_writecache* %6, %struct.dm_writecache** %3, align 8
  br label %7

7:                                                ; preds = %1, %26, %68
  %8 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %9 = call i32 @wc_lock(%struct.dm_writecache* %8)
  %10 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %11 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %10, i32 0, i32 1
  %12 = call %struct.bio* @bio_list_pop(i32* %11)
  store %struct.bio* %12, %struct.bio** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %19 = call i32 @wc_unlock(%struct.dm_writecache* %18)
  %20 = call i32 (...) @kthread_should_stop()
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @TASK_RUNNING, align 4
  %25 = call i32 @set_current_state(i32 %24)
  br label %69

26:                                               ; preds = %15
  %27 = call i32 (...) @schedule()
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = call i64 @bio_op(%struct.bio* %29)
  %31 = load i64, i64* @REQ_OP_DISCARD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = call i32 @bio_end_sector(%struct.bio* %39)
  %41 = call i32 @writecache_discard(%struct.dm_writecache* %34, i32 %38, i32 %40)
  %42 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %43 = call i32 @wc_unlock(%struct.dm_writecache* %42)
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %46 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bio_set_dev(%struct.bio* %44, i32 %49)
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = call i32 @generic_make_request(%struct.bio* %51)
  br label %68

53:                                               ; preds = %28
  %54 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %55 = call i32 @writecache_flush(%struct.dm_writecache* %54)
  %56 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %57 = call i32 @wc_unlock(%struct.dm_writecache* %56)
  %58 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %59 = call i64 @writecache_has_error(%struct.dm_writecache* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @BLK_STS_IOERR, align 4
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = call i32 @bio_endio(%struct.bio* %66)
  br label %68

68:                                               ; preds = %65, %33
  br label %7

69:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @wc_lock(%struct.dm_writecache*) #1

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @wc_unlock(%struct.dm_writecache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @writecache_discard(%struct.dm_writecache*, i32, i32) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @writecache_flush(%struct.dm_writecache*) #1

declare dso_local i64 @writecache_has_error(%struct.dm_writecache*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
