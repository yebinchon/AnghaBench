; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_disk_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_disk_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32 }
%struct.dm_dev = type { i32 }
%struct.dm_io_region = type { i64, i64, i32 }
%struct.dm_io_request = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DM_IO_KMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error flushing metadata: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*, %struct.dm_dev*)* @writecache_disk_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_disk_flush(%struct.dm_writecache* %0, %struct.dm_dev* %1) #0 {
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca %struct.dm_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_io_region, align 8
  %7 = alloca %struct.dm_io_request, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %3, align 8
  store %struct.dm_dev* %1, %struct.dm_dev** %4, align 8
  %8 = load %struct.dm_dev*, %struct.dm_dev** %4, align 8
  %9 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %6, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %6, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @REQ_OP_WRITE, align 4
  %15 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @REQ_PREFLUSH, align 4
  %17 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @DM_IO_KMEM, align 4
  %19 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %25 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = call i32 @dm_io(%struct.dm_io_request* %7, i32 1, %struct.dm_io_region* %6, i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @writecache_error(%struct.dm_writecache* %35, i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writecache_error(%struct.dm_writecache*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
