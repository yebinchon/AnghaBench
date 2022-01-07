; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_integrity_c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.gendisk = type { i32 }
%struct.blk_integrity = type { i64, i32, i32, i32* }

@dm_integrity_profile = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.dm_integrity_c*)* @dm_integrity_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_integrity_set(%struct.dm_target* %0, %struct.dm_integrity_c* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.blk_integrity, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.dm_integrity_c* %1, %struct.dm_integrity_c** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dm_table_get_md(i32 %9)
  %11 = call %struct.gendisk* @dm_disk(i32 %10)
  store %struct.gendisk* %11, %struct.gendisk** %5, align 8
  %12 = call i32 @memset(%struct.blk_integrity* %6, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 3
  store i32* @dm_integrity_profile, i32** %13, align 8
  %14 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %15 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %22 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SECTOR_SHIFT, align 8
  %27 = add nsw i64 %25, %26
  %28 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %30 = call i32 @blk_integrity_register(%struct.gendisk* %29, %struct.blk_integrity* %6)
  %31 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %32 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UINT_MAX, align 4
  %35 = call i32 @blk_queue_max_integrity_segments(i32 %33, i32 %34)
  ret void
}

declare dso_local %struct.gendisk* @dm_disk(i32) #1

declare dso_local i32 @dm_table_get_md(i32) #1

declare dso_local i32 @memset(%struct.blk_integrity*, i32, i32) #1

declare dso_local i32 @blk_integrity_register(%struct.gendisk*, %struct.blk_integrity*) #1

declare dso_local i32 @blk_queue_max_integrity_segments(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
