; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_sb_prepare_for_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_sb_prepare_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i32, i32, i32 }

@SUPERBLOCK_CSUM_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_block_validator*, %struct.dm_block*, i64)* @sb_prepare_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_prepare_for_write(%struct.dm_block_validator* %0, %struct.dm_block* %1, i64 %2) #0 {
  %4 = alloca %struct.dm_block_validator*, align 8
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.superblock_disk*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_block_validator* %0, %struct.dm_block_validator** %4, align 8
  store %struct.dm_block* %1, %struct.dm_block** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %10 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %9)
  store %struct.superblock_disk* %10, %struct.superblock_disk** %7, align 8
  %11 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %12 = call i32 @dm_block_location(%struct.dm_block* %11)
  %13 = call i32 @cpu_to_le64(i32 %12)
  %14 = load %struct.superblock_disk*, %struct.superblock_disk** %7, align 8
  %15 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.superblock_disk*, %struct.superblock_disk** %7, align 8
  %17 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %18, 4
  %20 = load i32, i32* @SUPERBLOCK_CSUM_XOR, align 4
  %21 = call i32 @dm_bm_checksum(i32* %17, i64 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.superblock_disk*, %struct.superblock_disk** %7, align 8
  %25 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @dm_bm_checksum(i32*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
