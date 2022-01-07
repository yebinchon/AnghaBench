; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___format_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c___format_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i32, i32, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i32 }

@SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to create transaction manager\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to create empty on-disk bitset\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to resize on-disk bitset to %lu entries\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dm_tm_pre_commit failed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"__copy_sm_root failed\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to write_lock superblock\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to commit superblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_clone_metadata*)* @__format_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__format_metadata(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_clone_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.superblock_disk*, align 8
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %3, align 8
  %7 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SUPERBLOCK_LOCATION, align 4
  %11 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %11, i32 0, i32 0
  %13 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %14 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %13, i32 0, i32 1
  %15 = call i32 @dm_tm_create_with_sm(i32 %9, i32 %10, i32* %12, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %26 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %25, i32 0, i32 4
  %27 = call i32 @dm_disk_bitset_init(i32 %24, i32* %26)
  %28 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %29 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %28, i32 0, i32 4
  %30 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %31 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %30, i32 0, i32 3
  %32 = call i32 @dm_bitset_empty(i32* %29, i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %95

37:                                               ; preds = %21
  %38 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %39 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %38, i32 0, i32 4
  %40 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %41 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %44 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %47 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %46, i32 0, i32 3
  %48 = call i32 @dm_bitset_resize(i32* %39, i32 %42, i32 0, i32 %45, i32 0, i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %95

56:                                               ; preds = %37
  %57 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %58 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dm_tm_pre_commit(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %95

65:                                               ; preds = %56
  %66 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %67 = call i32 @__copy_sm_root(%struct.dm_clone_metadata* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %95

72:                                               ; preds = %65
  %73 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %74 = call i32 @superblock_write_lock_zero(%struct.dm_clone_metadata* %73, %struct.dm_block** %5)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %95

79:                                               ; preds = %72
  %80 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %81 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %80)
  store %struct.superblock_disk* %81, %struct.superblock_disk** %6, align 8
  %82 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %83 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %84 = call i32 @__prepare_superblock(%struct.dm_clone_metadata* %82, %struct.superblock_disk* %83)
  %85 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %86 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %89 = call i32 @dm_tm_commit(i32 %87, %struct.dm_block* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %95

94:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %105

95:                                               ; preds = %92, %77, %70, %63, %51, %35
  %96 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %97 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dm_sm_destroy(i32 %98)
  %100 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %3, align 8
  %101 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dm_tm_destroy(i32 %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %94, %18
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @dm_tm_create_with_sm(i32, i32, i32*, i32*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @dm_disk_bitset_init(i32, i32*) #1

declare dso_local i32 @dm_bitset_empty(i32*, i32*) #1

declare dso_local i32 @dm_bitset_resize(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dm_tm_pre_commit(i32) #1

declare dso_local i32 @__copy_sm_root(%struct.dm_clone_metadata*) #1

declare dso_local i32 @superblock_write_lock_zero(%struct.dm_clone_metadata*, %struct.dm_block**) #1

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @__prepare_superblock(%struct.dm_clone_metadata*, %struct.superblock_disk*) #1

declare dso_local i32 @dm_tm_commit(i32, %struct.dm_block*) #1

declare dso_local i32 @dm_sm_destroy(i32) #1

declare dso_local i32 @dm_tm_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
