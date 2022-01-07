; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_open_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_open_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era_metadata = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.dm_block = type { i32 }
%struct.superblock_disk = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"couldn't read_lock superblock\00", align 1
@SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"dm_tm_open_with_sm failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.era_metadata*)* @open_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_metadata(%struct.era_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.era_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_block*, align 8
  %6 = alloca %struct.superblock_disk*, align 8
  store %struct.era_metadata* %0, %struct.era_metadata** %3, align 8
  %7 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %8 = call i32 @superblock_read_lock(%struct.era_metadata* %7, %struct.dm_block** %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %16 = call %struct.superblock_disk* @dm_block_data(%struct.dm_block* %15)
  store %struct.superblock_disk* %16, %struct.superblock_disk** %6, align 8
  %17 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %18 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SUPERBLOCK_LOCATION, align 4
  %21 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %22 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %24, i32 0, i32 8
  %26 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %26, i32 0, i32 7
  %28 = call i32 @dm_tm_open_with_sm(i32 %19, i32 %20, i32 %23, i32 4, i32* %25, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %76

33:                                               ; preds = %14
  %34 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %35 = call i32 @setup_infos(%struct.era_metadata* %34)
  %36 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %37 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %41 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %43 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %47 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %49 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %53 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %55 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le64_to_cpu(i32 %56)
  %58 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %59 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %61 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le64_to_cpu(i32 %62)
  %64 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %65 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.superblock_disk*, %struct.superblock_disk** %6, align 8
  %67 = getelementptr inbounds %struct.superblock_disk, %struct.superblock_disk* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le64_to_cpu(i32 %68)
  %70 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %71 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %73 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %75 = call i32 @dm_bm_unlock(%struct.dm_block* %74)
  store i32 0, i32* %2, align 4
  br label %80

76:                                               ; preds = %31
  %77 = load %struct.dm_block*, %struct.dm_block** %5, align 8
  %78 = call i32 @dm_bm_unlock(%struct.dm_block* %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %33, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @superblock_read_lock(%struct.era_metadata*, %struct.dm_block**) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.superblock_disk* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @dm_tm_open_with_sm(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @setup_infos(%struct.era_metadata*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
