; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_chunk_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_chunk_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dm_io_region = type { i32, i32, i32 }
%struct.dm_io_request = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.mdata_req = type { i32, i32, %struct.dm_io_request*, %struct.dm_io_region* }
%struct.TYPE_10__ = type { i32 }

@DM_IO_VMA = common dso_local global i32 0, align 4
@do_metadata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*, i8*, i32, i32, i32, i32)* @chunk_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_io(%struct.pstore* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pstore*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dm_io_region, align 4
  %15 = alloca %struct.dm_io_request, align 8
  %16 = alloca %struct.mdata_req, align 8
  store %struct.pstore* %0, %struct.pstore** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %14, i32 0, i32 0
  %18 = load %struct.pstore*, %struct.pstore** %8, align 8
  %19 = getelementptr inbounds %struct.pstore, %struct.pstore* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %17, align 4
  %25 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %14, i32 0, i32 1
  %26 = load %struct.pstore*, %struct.pstore** %8, align 8
  %27 = getelementptr inbounds %struct.pstore, %struct.pstore* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %14, i32 0, i32 2
  %32 = load %struct.pstore*, %struct.pstore** %8, align 8
  %33 = getelementptr inbounds %struct.pstore, %struct.pstore* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_10__* @dm_snap_cow(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %31, align 4
  %40 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 0
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 1
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 3
  %47 = load %struct.pstore*, %struct.pstore** %8, align 8
  %48 = getelementptr inbounds %struct.pstore, %struct.pstore* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 8
  %50 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %55 = load i32, i32* @DM_IO_VMA, align 4
  store i32 %55, i32* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %6
  %59 = call i32 @dm_io(%struct.dm_io_request* %15, i32 1, %struct.dm_io_region* %14, i32* null)
  store i32 %59, i32* %7, align 4
  br label %79

60:                                               ; preds = %6
  %61 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %16, i32 0, i32 3
  store %struct.dm_io_region* %14, %struct.dm_io_region** %61, align 8
  %62 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %16, i32 0, i32 2
  store %struct.dm_io_request* %15, %struct.dm_io_request** %62, align 8
  %63 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %16, i32 0, i32 1
  %64 = load i32, i32* @do_metadata, align 4
  %65 = call i32 @INIT_WORK_ONSTACK(i32* %63, i32 %64)
  %66 = load %struct.pstore*, %struct.pstore** %8, align 8
  %67 = getelementptr inbounds %struct.pstore, %struct.pstore* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %16, i32 0, i32 1
  %70 = call i32 @queue_work(i32 %68, i32* %69)
  %71 = load %struct.pstore*, %struct.pstore** %8, align 8
  %72 = getelementptr inbounds %struct.pstore, %struct.pstore* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @flush_workqueue(i32 %73)
  %75 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %16, i32 0, i32 1
  %76 = call i32 @destroy_work_on_stack(i32* %75)
  %77 = getelementptr inbounds %struct.mdata_req, %struct.mdata_req* %16, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %60, %58
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_10__* @dm_snap_cow(i32) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

declare dso_local i32 @INIT_WORK_ONSTACK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_work_on_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
