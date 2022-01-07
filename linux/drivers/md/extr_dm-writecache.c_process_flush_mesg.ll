; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_process_flush_mesg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_process_flush_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.dm_writecache*)* @process_flush_mesg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_flush_mesg(i32 %0, i8** %1, %struct.dm_writecache* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.dm_writecache*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.dm_writecache* %2, %struct.dm_writecache** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %71

13:                                               ; preds = %3
  %14 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %15 = call i32 @wc_lock(%struct.dm_writecache* %14)
  %16 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %17 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @dm_suspended(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %23 = call i32 @wc_unlock(%struct.dm_writecache* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %71

26:                                               ; preds = %13
  %27 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %28 = call i64 @writecache_has_error(%struct.dm_writecache* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %32 = call i32 @wc_unlock(%struct.dm_writecache* %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %26
  %36 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %37 = call i32 @writecache_flush(%struct.dm_writecache* %36)
  %38 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %39 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %43 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %46 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %45, i32 0, i32 2
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  %48 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %49 = call i32 @wc_unlock(%struct.dm_writecache* %48)
  %50 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %51 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @flush_workqueue(i32 %52)
  %54 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %55 = call i32 @wc_lock(%struct.dm_writecache* %54)
  %56 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %57 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %61 = call i64 @writecache_has_error(%struct.dm_writecache* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %35
  %64 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %65 = call i32 @wc_unlock(%struct.dm_writecache* %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %35
  %69 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  %70 = call i32 @wc_unlock(%struct.dm_writecache* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %63, %30, %21, %10
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @wc_lock(%struct.dm_writecache*) #1

declare dso_local i64 @dm_suspended(i32) #1

declare dso_local i32 @wc_unlock(%struct.dm_writecache*) #1

declare dso_local i64 @writecache_has_error(%struct.dm_writecache*) #1

declare dso_local i32 @writecache_flush(%struct.dm_writecache*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
