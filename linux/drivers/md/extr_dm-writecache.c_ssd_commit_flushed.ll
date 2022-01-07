; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_ssd_commit_flushed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_ssd_commit_flushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i64, i32, %struct.TYPE_8__*, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.dm_io_region = type { i64, i64, i32 }
%struct.dm_io_request = type { %struct.TYPE_7__, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { %struct.io_notify*, i32 (i32, %struct.io_notify*)* }
%struct.io_notify = type { i32, i32, i32, i32, %struct.dm_writecache* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8* }

@BITMAP_GRANULARITY = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@DM_IO_VMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*)* @ssd_commit_flushed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssd_commit_flushed(%struct.dm_writecache* %0) #0 {
  %2 = alloca %struct.dm_writecache*, align 8
  %3 = alloca %struct.dm_io_region, align 8
  %4 = alloca %struct.dm_io_request, align 8
  %5 = alloca %struct.io_notify, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_writecache* %0, %struct.dm_writecache** %2, align 8
  %9 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 0
  %10 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %11 = ptrtoint %struct.dm_writecache* %10 to i32
  store i32 %11, i32* %9, align 8
  %12 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 2
  %17 = call i32 @ATOMIC_INIT(i32 1)
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 4
  store %struct.dm_writecache* null, %struct.dm_writecache** %19, align 8
  %20 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %21 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 8
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %1, %98
  %25 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %26 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @find_next_bit(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %136

38:                                               ; preds = %24
  %39 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %40 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @find_next_zero_bit(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %46 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @BITMAP_GRANULARITY, align 8
  %54 = load i64, i64* @SECTOR_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = mul i64 %52, %55
  %57 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @BITMAP_GRANULARITY, align 8
  %63 = load i64, i64* @SECTOR_SHIFT, align 8
  %64 = lshr i64 %62, %63
  %65 = mul i64 %61, %64
  %66 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %70 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %38
  br label %136

77:                                               ; preds = %38
  %78 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %79, %81
  %83 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %84 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %77
  %91 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %92 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %93, %95
  %97 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 1
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %77
  %99 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %100 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %3, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 1
  %106 = call i32 @atomic_inc(i32* %105)
  %107 = load i32, i32* @REQ_OP_WRITE, align 4
  %108 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @REQ_SYNC, align 4
  %110 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 3
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* @DM_IO_VMA, align 4
  %112 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %115 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* @BITMAP_GRANULARITY, align 8
  %121 = mul i64 %119, %120
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  %123 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %127 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 1
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 (i32, %struct.io_notify*)* @writecache_notify_io, i32 (i32, %struct.io_notify*)** %131, align 8
  %132 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %4, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store %struct.io_notify* %5, %struct.io_notify** %133, align 8
  %134 = call i32 @dm_io(%struct.dm_io_request* %4, i32 1, %struct.dm_io_region* %3, i32* null)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %7, align 4
  br label %24

136:                                              ; preds = %76, %37
  %137 = call i32 @writecache_notify_io(i32 0, %struct.io_notify* %5)
  %138 = getelementptr inbounds %struct.io_notify, %struct.io_notify* %5, i32 0, i32 0
  %139 = call i32 @wait_for_completion_io(i32* %138)
  %140 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %141 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %142 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = call i32 @writecache_disk_flush(%struct.dm_writecache* %140, %struct.TYPE_8__* %143)
  %145 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %146 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %149 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @memset(i32 %147, i32 0, i32 %150)
  ret void
}

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i32 @ATOMIC_INIT(i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @writecache_notify_io(i32, %struct.io_notify*) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

declare dso_local i32 @writecache_disk_flush(%struct.dm_writecache*, %struct.TYPE_8__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
