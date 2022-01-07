; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_dispatch_clone_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_dispatch_clone_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32 }

@RQF_IO_STAT = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i64 0, align 8
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@BLK_STS_DEV_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.request*, %struct.request*)* @dm_dispatch_clone_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dm_dispatch_clone_request(%struct.request* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request*, %struct.request** %3, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @blk_queue_io_stat(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @RQF_IO_STAT, align 4
  %13 = load %struct.request*, %struct.request** %3, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = call i32 (...) @ktime_get_ns()
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.request*, %struct.request** %3, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = call i64 @blk_insert_cloned_request(i32 %23, %struct.request* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @BLK_STS_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %17
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @BLK_STS_RESOURCE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @BLK_STS_DEV_RESOURCE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.request*, %struct.request** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @dm_complete_request(%struct.request* %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %33, %29, %17
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @blk_queue_io_stat(i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i64 @blk_insert_cloned_request(i32, %struct.request*) #1

declare dso_local i32 @dm_complete_request(%struct.request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
