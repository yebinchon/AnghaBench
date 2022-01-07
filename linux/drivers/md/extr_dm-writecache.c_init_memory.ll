; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_init_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_init_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32* }

@MEMORY_SUPERBLOCK_VERSION = common dso_local global i32 0, align 4
@MEMORY_SUPERBLOCK_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_writecache*)* @init_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_memory(%struct.dm_writecache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dm_writecache* %0, %struct.dm_writecache** %3, align 8
  %6 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %7 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %10 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %13 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %12, i32 0, i32 0
  %14 = call i32 @calculate_memory_size(i32 %8, i32 %11, i64* %13, i32* null)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %116

19:                                               ; preds = %1
  %20 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %21 = call i32 @writecache_alloc_entries(%struct.dm_writecache* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %116

26:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %30 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @ARRAY_SIZE(i32* %32)
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %37 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_le64(i64 0)
  %44 = call i32 @pmem_assign(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %4, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %50 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MEMORY_SUPERBLOCK_VERSION, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = call i32 @pmem_assign(i32 %52, i32 %54)
  %56 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %57 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %61 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = call i32 @pmem_assign(i32 %59, i32 %63)
  %65 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %66 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %70 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @cpu_to_le64(i64 %71)
  %73 = call i32 @pmem_assign(i32 %68, i32 %72)
  %74 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %75 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_le64(i64 0)
  %79 = call i32 @pmem_assign(i32 %77, i32 %78)
  store i64 0, i64* %4, align 8
  br label %80

80:                                               ; preds = %94, %48
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %83 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %88 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %89 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = call i32 @write_original_sector_seq_count(%struct.dm_writecache* %87, i32* %92, i32 -1, i32 -1)
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %4, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %4, align 8
  br label %80

97:                                               ; preds = %80
  %98 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %99 = call i32 @writecache_flush_all_metadata(%struct.dm_writecache* %98)
  %100 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %101 = call i32 @writecache_commit_flushed(%struct.dm_writecache* %100)
  %102 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %103 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MEMORY_SUPERBLOCK_MAGIC, align 4
  %107 = call i32 @cpu_to_le32(i32 %106)
  %108 = call i32 @pmem_assign(i32 %105, i32 %107)
  %109 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %110 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %111 = call %struct.TYPE_2__* @sb(%struct.dm_writecache* %110)
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = call i32 @writecache_flush_region(%struct.dm_writecache* %109, i32* %112, i32 4)
  %114 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %115 = call i32 @writecache_commit_flushed(%struct.dm_writecache* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %97, %24, %17
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @calculate_memory_size(i32, i32, i64*, i32*) #1

declare dso_local i32 @writecache_alloc_entries(%struct.dm_writecache*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_2__* @sb(%struct.dm_writecache*) #1

declare dso_local i32 @pmem_assign(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @write_original_sector_seq_count(%struct.dm_writecache*, i32*, i32, i32) #1

declare dso_local i32 @writecache_flush_all_metadata(%struct.dm_writecache*) #1

declare dso_local i32 @writecache_commit_flushed(%struct.dm_writecache*) #1

declare dso_local i32 @writecache_flush_region(%struct.dm_writecache*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
