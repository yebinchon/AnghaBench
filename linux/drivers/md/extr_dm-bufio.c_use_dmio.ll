; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_use_dmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_use_dmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i64, i32 (%struct.dm_buffer*, i32)*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_5__ = type { %struct.dm_buffer*, i32 }
%struct.dm_io_region = type { i32, i32, i32 }

@dmio_complete = common dso_local global i32 0, align 4
@DATA_MODE_VMALLOC = common dso_local global i64 0, align 8
@DM_IO_KMEM = common dso_local global i32 0, align 4
@DM_IO_VMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32, i32, i32, i32)* @use_dmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_dmio(%struct.dm_buffer* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dm_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_io_request, align 8
  %13 = alloca %struct.dm_io_region, align 4
  store %struct.dm_buffer* %0, %struct.dm_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 1
  %17 = bitcast %struct.TYPE_8__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 2
  %19 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 8
  %24 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  store %struct.dm_buffer* %26, %struct.dm_buffer** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %28 = load i32, i32* @dmio_complete, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %13, i32 0, i32 0
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %13, i32 0, i32 1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %13, i32 0, i32 2
  %35 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %34, align 4
  %40 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DATA_MODE_VMALLOC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %5
  %46 = load i32, i32* @DM_IO_KMEM, align 4
  %47 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %73

59:                                               ; preds = %5
  %60 = load i32, i32* @DM_IO_VMA, align 4
  %61 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %59, %45
  %74 = call i32 @dm_io(%struct.dm_io_request* %12, i32 1, %struct.dm_io_region* %13, i32* null)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %79, i32 0, i32 1
  %81 = load i32 (%struct.dm_buffer*, i32)*, i32 (%struct.dm_buffer*, i32)** %80, align 8
  %82 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @errno_to_blk_status(i32 %83)
  %85 = call i32 %81(%struct.dm_buffer* %82, i32 %84)
  br label %86

86:                                               ; preds = %78, %73
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @errno_to_blk_status(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
