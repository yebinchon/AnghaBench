; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_super_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_super_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dm_raid_superblock = type { i64, i32, i64 }

@DM_RAID_MAGIC = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@FirstUse = common dso_local global i32 0, align 4
@FEATURE_FLAG_SUPPORTS_V190 = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, %struct.md_rdev*)* @super_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_load(%struct.md_rdev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_raid_superblock*, align 8
  %8 = alloca %struct.dm_raid_superblock*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %11 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %12 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %13 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @read_disk_sb(%struct.md_rdev* %11, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %88

20:                                               ; preds = %2
  %21 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.dm_raid_superblock* @page_address(i32 %23)
  store %struct.dm_raid_superblock* %24, %struct.dm_raid_superblock** %7, align 8
  %25 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %26 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @DM_RAID_MAGIC, align 4
  %29 = call i64 @cpu_to_le32(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @In_sync, align 4
  %33 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 2
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %31
  %38 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %37, %20
  %43 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %44 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %47 = call i32 @super_sync(%struct.TYPE_2__* %45, %struct.md_rdev* %46)
  %48 = load i32, i32* @FirstUse, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load i32, i32* @FEATURE_FLAG_SUPPORTS_V190, align 4
  %53 = call i64 @cpu_to_le32(i32 %52)
  %54 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %55 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %57 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %58 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %56, i32* %60)
  %62 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %63 = icmp ne %struct.md_rdev* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  store i32 %65, i32* %3, align 4
  br label %88

66:                                               ; preds = %37, %31
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = icmp ne %struct.md_rdev* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %88

70:                                               ; preds = %66
  %71 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %72 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le64_to_cpu(i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %76 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.dm_raid_superblock* @page_address(i32 %77)
  store %struct.dm_raid_superblock* %78, %struct.dm_raid_superblock** %8, align 8
  %79 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %8, align 8
  %80 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @le64_to_cpu(i32 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp sgt i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %70, %69, %42, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @read_disk_sb(%struct.md_rdev*, i32, i32) #1

declare dso_local %struct.dm_raid_superblock* @page_address(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @super_sync(%struct.TYPE_2__*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
