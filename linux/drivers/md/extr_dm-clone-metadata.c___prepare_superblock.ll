; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___prepare_superblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___prepare_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32 }
%struct.superblock_disk = type { i8*, i8*, i8*, i32, i8*, i8*, i32, i8* }

@SUPERBLOCK_MAGIC = common dso_local global i32 0, align 4
@DM_CLONE_MAX_METADATA_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_clone_metadata*, %struct.superblock_disk*)* @__prepare_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__prepare_superblock(%struct.dm_clone_metadata* %0, %struct.superblock_disk* %1) #0 {
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca %struct.superblock_disk*, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  store %struct.superblock_disk* %1, %struct.superblock_disk** %4, align 8
  %5 = call i8* @cpu_to_le32(i64 0)
  %6 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %7 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %6, i32 0, i32 7
  store i8* %5, i8** %7, align 8
  %8 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %9 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @memset(i32 %10, i32 0, i32 4)
  %12 = load i32, i32* @SUPERBLOCK_MAGIC, align 4
  %13 = call i8* @cpu_to_le64(i32 %12)
  %14 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %15 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @DM_CLONE_MAX_METADATA_VERSION, align 8
  %17 = call i8* @cpu_to_le32(i64 %16)
  %18 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %19 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %21 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %20, i32 0, i32 3
  %22 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %22, i32 0, i32 3
  %24 = call i32 @memcpy(i32* %21, i32* %23, i32 4)
  %25 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %26 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le64(i32 %27)
  %29 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %30 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %32 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le64(i32 %33)
  %35 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %36 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %38 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le64(i32 %39)
  %41 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %42 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
