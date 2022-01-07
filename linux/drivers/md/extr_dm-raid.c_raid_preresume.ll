; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_preresume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_preresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { i32, i32, %struct.mddev }
%struct.mddev = type { i64, i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RT_FLAG_RS_PRERESUMED = common dso_local global i32 0, align 4
@RT_FLAG_UPDATE_SBS = common dso_local global i32 0, align 4
@RT_FLAG_RS_BITMAP_LOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to resize bitmap\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@RT_FLAG_RESHAPE_RS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to check/start reshape, continuing without change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*)* @raid_preresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_preresume(%struct.dm_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.raid_set*, align 8
  %6 = alloca %struct.mddev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.raid_set*, %struct.raid_set** %8, align 8
  store %struct.raid_set* %9, %struct.raid_set** %5, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %11 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %10, i32 0, i32 2
  store %struct.mddev* %11, %struct.mddev** %6, align 8
  %12 = load i32, i32* @RT_FLAG_RS_PRERESUMED, align 4
  %13 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %14 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %13, i32 0, i32 0
  %15 = call i64 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

18:                                               ; preds = %1
  %19 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %20 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %21 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %26 = call i32 @rs_update_sbs(%struct.raid_set* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %29 = call i32 @__load_dirty_region_bitmap(%struct.raid_set* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %27
  %35 = load i32, i32* @RT_FLAG_RS_BITMAP_LOADED, align 4
  %36 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %37 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load %struct.mddev*, %struct.mddev** %6, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.mddev*, %struct.mddev** %6, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %51 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @to_bytes(i32 %52)
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %45
  %56 = load %struct.mddev*, %struct.mddev** %6, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mddev*, %struct.mddev** %6, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %63 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @to_bytes(i32 %64)
  %66 = call i32 @md_bitmap_resize(i64 %58, i32 %61, i64 %65, i32 0)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %55
  br label %72

72:                                               ; preds = %71, %45, %40, %34
  %73 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %74 = load %struct.mddev*, %struct.mddev** %6, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 2
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  %77 = load %struct.mddev*, %struct.mddev** %6, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load %struct.mddev*, %struct.mddev** %6, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MaxSector, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %89 = load %struct.mddev*, %struct.mddev** %6, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 2
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  %92 = load %struct.mddev*, %struct.mddev** %6, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.mddev*, %struct.mddev** %6, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %87, %81, %72
  %98 = load i32, i32* @RT_FLAG_RESHAPE_RS, align 4
  %99 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %100 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %99, i32 0, i32 0
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %105 = call i32 @rs_set_rdev_sectors(%struct.raid_set* %104)
  %106 = load %struct.mddev*, %struct.mddev** %6, align 8
  %107 = call i32 @mddev_lock_nointr(%struct.mddev* %106)
  %108 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %109 = call i32 @rs_start_reshape(%struct.raid_set* %108)
  store i32 %109, i32* %4, align 4
  %110 = load %struct.mddev*, %struct.mddev** %6, align 8
  %111 = call i32 @mddev_unlock(%struct.mddev* %110)
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = call i32 @DMWARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %103
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %97
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %32, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rs_update_sbs(%struct.raid_set*) #1

declare dso_local i32 @__load_dirty_region_bitmap(%struct.raid_set*) #1

declare dso_local i64 @to_bytes(i32) #1

declare dso_local i32 @md_bitmap_resize(i64, i32, i64, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rs_set_rdev_sectors(%struct.raid_set*) #1

declare dso_local i32 @mddev_lock_nointr(%struct.mddev*) #1

declare dso_local i32 @rs_start_reshape(%struct.raid_set*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

declare dso_local i32 @DMWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
