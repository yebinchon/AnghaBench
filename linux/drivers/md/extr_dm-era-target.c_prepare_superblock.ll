; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_prepare_superblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_prepare_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era_metadata = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.superblock_disk = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }

@SUPERBLOCK_MAGIC = common dso_local global i32 0, align 4
@MAX_ERA_VERSION = common dso_local global i64 0, align 8
@DM_ERA_METADATA_BLOCK_SIZE = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.era_metadata*, %struct.superblock_disk*)* @prepare_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_superblock(%struct.era_metadata* %0, %struct.superblock_disk* %1) #0 {
  %3 = alloca %struct.era_metadata*, align 8
  %4 = alloca %struct.superblock_disk*, align 8
  store %struct.era_metadata* %0, %struct.era_metadata** %3, align 8
  store %struct.superblock_disk* %1, %struct.superblock_disk** %4, align 8
  %5 = load i32, i32* @SUPERBLOCK_MAGIC, align 4
  %6 = call i8* @cpu_to_le64(i32 %5)
  %7 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %8 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %7, i32 0, i32 11
  store i8* %6, i8** %8, align 8
  %9 = call i8* @cpu_to_le32(i64 0)
  %10 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %11 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %10, i32 0, i32 10
  store i8* %9, i8** %11, align 8
  %12 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %13 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load i64, i64* @MAX_ERA_VERSION, align 8
  %17 = call i8* @cpu_to_le32(i64 %16)
  %18 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %19 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %18, i32 0, i32 8
  store i8* %17, i8** %19, align 8
  %20 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %21 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %22 = call i32 @copy_sm_root(%struct.era_metadata* %20, %struct.superblock_disk* %21)
  %23 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %24 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @cpu_to_le32(i64 %25)
  %27 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %28 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* @DM_ERA_METADATA_BLOCK_SIZE, align 8
  %30 = load i64, i64* @SECTOR_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = call i8* @cpu_to_le32(i64 %31)
  %33 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %34 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %36 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %40 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %42 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @cpu_to_le32(i64 %43)
  %45 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %46 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %48 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %52 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %51, i32 0, i32 3
  %53 = call i32 @ws_pack(i32* %50, i32* %52)
  %54 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %55 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %59 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %61 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le64(i32 %62)
  %64 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %65 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %67 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_le64(i32 %68)
  %70 = load %struct.superblock_disk*, %struct.superblock_disk** %4, align 8
  %71 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @copy_sm_root(%struct.era_metadata*, %struct.superblock_disk*) #1

declare dso_local i32 @ws_pack(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
