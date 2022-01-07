; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___metadata_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___metadata_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"dm_bitset_flush failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dm_tm_pre_commit failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"__copy_sm_root failed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to write_lock superblock\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to commit superblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*)* @__metadata_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__metadata_commit(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.superblock_disk*, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  %7 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %7, i32 0, i32 5
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %10 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %13 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %12, i32 0, i32 4
  %14 = call i32 @dm_bitset_flush(i32* %8, i32 %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %1
  %21 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %22 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dm_tm_pre_commit(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %20
  %31 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %32 = call i32 @__copy_sm_root(%struct.dm_clone_metadata* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @DMERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %75

38:                                               ; preds = %30
  %39 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %40 = call i32 @superblock_write_lock_zero(%struct.dm_clone_metadata* %39, %struct.dm_block** %5)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @DMERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %75

46:                                               ; preds = %38
  %47 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %48 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %47)
  store %struct.superblock_disk* %48, %struct.superblock_disk** %6, align 8
  %49 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %50 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %51 = call i32 @__prepare_superblock(%struct.dm_clone_metadata* %49, %struct.superblock_disk* %50)
  %52 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %56 = call i32 @dm_tm_commit(i32 %54, %struct.dm_block* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = call i32 @DMERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %75

62:                                               ; preds = %46
  %63 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %64 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %67 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @bitmap_full(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %73 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %62
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %59, %43, %35, %27, %17
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @dm_bitset_flush(i32*, i32, i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_tm_pre_commit(i32) #1

declare dso_local i32 @__copy_sm_root(%struct.dm_clone_metadata*) #1

declare dso_local i32 @superblock_write_lock_zero(%struct.dm_clone_metadata*, %struct.dm_block**) #1

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @__prepare_superblock(%struct.dm_clone_metadata*, %struct.superblock_disk*) #1

declare dso_local i32 @dm_tm_commit(i32, %struct.dm_block*) #1

declare dso_local i64 @bitmap_full(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
