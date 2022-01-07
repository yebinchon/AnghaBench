; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___open_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___open_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to read_lock superblock\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Region and/or target size don't match the ones in metadata\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"dm_tm_open_with_sm failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*)* @__open_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__open_metadata(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.superblock_disk*, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  %7 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %8 = call i32 @superblock_read_lock(%struct.dm_clone_metadata* %7, %struct.dm_block** %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @DMERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %16 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %15)
  store %struct.superblock_disk* %16, %struct.superblock_disk** %6, align 8
  %17 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %18 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %21 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le64_to_cpu(i32 %22)
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %14
  %26 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %30 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le64_to_cpu(i32 %31)
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25, %14
  %35 = call i32 @DMERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %25
  %39 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %40 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SUPERBLOCK_LOCATION, align 4
  %43 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %44 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %47 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %46, i32 0, i32 4
  %48 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %49 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %48, i32 0, i32 5
  %50 = call i32 @dm_tm_open_with_sm(i32 %41, i32 %42, i32 %45, i32 4, i32* %47, i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %68

55:                                               ; preds = %38
  %56 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %57 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %60 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %59, i32 0, i32 3
  %61 = call i32 @dm_disk_bitset_init(i32 %58, i32* %60)
  %62 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %63 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le64_to_cpu(i32 %64)
  %66 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %67 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %55, %53, %34
  %69 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %70 = call i32 @dm_bm_unlock(%struct.dm_block* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @superblock_read_lock(%struct.dm_clone_metadata*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dm_tm_open_with_sm(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dm_disk_bitset_init(i32, i32*) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
