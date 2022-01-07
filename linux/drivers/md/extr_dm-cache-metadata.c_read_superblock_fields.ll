; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_read_superblock_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_read_superblock_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i8*, %struct.TYPE_2__, i8*, i8**, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.cache_disk_superblock = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_metadata*, %struct.cache_disk_superblock*)* @read_superblock_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_superblock_fields(%struct.dm_cache_metadata* %0, %struct.cache_disk_superblock* %1) #0 {
  %3 = alloca %struct.dm_cache_metadata*, align 8
  %4 = alloca %struct.cache_disk_superblock*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %3, align 8
  store %struct.cache_disk_superblock* %1, %struct.cache_disk_superblock** %4, align 8
  %5 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %6 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le32_to_cpu(i32 %7)
  %9 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %9, i32 0, i32 14
  store i8* %8, i8** %10, align 8
  %11 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %12 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %11, i32 0, i32 15
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @le32_to_cpu(i32 %13)
  %15 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %16 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %15, i32 0, i32 13
  store i8* %14, i8** %16, align 8
  %17 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %18 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le64_to_cpu(i32 %19)
  %21 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %22 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %21, i32 0, i32 12
  store i8* %20, i8** %22, align 8
  %23 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %24 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @le64_to_cpu(i32 %25)
  %27 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %28 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %27, i32 0, i32 11
  store i8* %26, i8** %28, align 8
  %29 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %30 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le64_to_cpu(i32 %31)
  %33 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %34 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %33, i32 0, i32 10
  store i8* %32, i8** %34, align 8
  %35 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %36 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @le64_to_cpu(i32 %37)
  %39 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %40 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  %41 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %42 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le64_to_cpu(i32 %43)
  %45 = call i32 @to_dblock(i8* %44)
  %46 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %47 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %49 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %55 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = call i32 @to_cblock(i8* %57)
  %59 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %60 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %62 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %65 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strncpy(i32 %63, i32 %66, i32 4)
  %68 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %69 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le32_to_cpu(i32 %72)
  %74 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %75 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %73, i8** %77, align 8
  %78 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %79 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %85 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* %83, i8** %87, align 8
  %88 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %89 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %95 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %94, i32 0, i32 4
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  store i8* %93, i8** %97, align 8
  %98 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %99 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %103 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %105 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %109 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  %111 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %112 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @le32_to_cpu(i32 %113)
  %115 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %116 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %119 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @le32_to_cpu(i32 %120)
  %122 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %123 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %126 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le32_to_cpu(i32 %127)
  %129 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %130 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %133 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %2
  %136 = load %struct.cache_disk_superblock*, %struct.cache_disk_superblock** %4, align 8
  %137 = getelementptr inbounds %struct.cache_disk_superblock, %struct.cache_disk_superblock* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @le64_to_cpu(i32 %138)
  %140 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %141 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %135, %2
  %143 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %3, align 8
  %144 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @to_dblock(i8*) #1

declare dso_local i32 @to_cblock(i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
