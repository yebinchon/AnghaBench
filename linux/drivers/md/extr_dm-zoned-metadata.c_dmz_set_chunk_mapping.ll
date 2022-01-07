; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_set_chunk_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_set_chunk_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.dmz_mblock** }
%struct.dmz_mblock = type { i64 }
%struct.dmz_map = type { i8*, i8* }

@DMZ_MAP_ENTRIES_SHIFT = common dso_local global i32 0, align 4
@DMZ_MAP_ENTRIES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, i32, i32, i32)* @dmz_set_chunk_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_set_chunk_mapping(%struct.dmz_metadata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dmz_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmz_mblock*, align 8
  %10 = alloca %struct.dmz_map*, align 8
  %11 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %13 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %12, i32 0, i32 0
  %14 = load %struct.dmz_mblock**, %struct.dmz_mblock*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DMZ_MAP_ENTRIES_SHIFT, align 4
  %17 = lshr i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dmz_mblock*, %struct.dmz_mblock** %14, i64 %18
  %20 = load %struct.dmz_mblock*, %struct.dmz_mblock** %19, align 8
  store %struct.dmz_mblock* %20, %struct.dmz_mblock** %9, align 8
  %21 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %22 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dmz_map*
  store %struct.dmz_map* %24, %struct.dmz_map** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DMZ_MAP_ENTRIES_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.dmz_map*, %struct.dmz_map** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %30, i64 %32
  %34 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %33, i32 0, i32 1
  store i8* %29, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.dmz_map*, %struct.dmz_map** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %37, i64 %39
  %41 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load %struct.dmz_metadata*, %struct.dmz_metadata** %5, align 8
  %43 = load %struct.dmz_mblock*, %struct.dmz_mblock** %9, align 8
  %44 = call i32 @dmz_dirty_mblock(%struct.dmz_metadata* %42, %struct.dmz_mblock* %43)
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dmz_dirty_mblock(%struct.dmz_metadata*, %struct.dmz_mblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
