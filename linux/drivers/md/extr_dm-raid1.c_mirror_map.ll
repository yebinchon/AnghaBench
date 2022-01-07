; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.mirror_set* }
%struct.mirror_set = type { i32 }
%struct.bio = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mirror = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dm_dirty_log*, i32, i32)* }
%struct.dm_raid1_bio_record = type { %struct.mirror*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@WRITE = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @mirror_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mirror*, align 8
  %9 = alloca %struct.mirror_set*, align 8
  %10 = alloca %struct.dm_dirty_log*, align 8
  %11 = alloca %struct.dm_raid1_bio_record*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call i32 @bio_data_dir(%struct.bio* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load %struct.mirror_set*, %struct.mirror_set** %15, align 8
  store %struct.mirror_set* %16, %struct.mirror_set** %9, align 8
  %17 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %18 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.dm_dirty_log* @dm_rh_dirty_log(i32 %19)
  store %struct.dm_dirty_log* %20, %struct.dm_dirty_log** %10, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = call %struct.dm_raid1_bio_record* @dm_per_bio_data(%struct.bio* %21, i32 24)
  store %struct.dm_raid1_bio_record* %22, %struct.dm_raid1_bio_record** %11, align 8
  %23 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %11, align 8
  %24 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WRITE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %31 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bio*, %struct.bio** %5, align 8
  %34 = call i32 @dm_rh_bio_to_region(i32 %32, %struct.bio* %33)
  %35 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %11, align 8
  %36 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @queue_bio(%struct.mirror_set* %37, %struct.bio* %38, i32 %39)
  %41 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %41, i32* %3, align 4
  br label %114

42:                                               ; preds = %2
  %43 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %10, align 8
  %44 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dm_dirty_log*, i32, i32)*, i32 (%struct.dm_dirty_log*, i32, i32)** %46, align 8
  %48 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %10, align 8
  %49 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %50 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = call i32 @dm_rh_bio_to_region(i32 %51, %struct.bio* %52)
  %54 = call i32 %47(%struct.dm_dirty_log* %48, i32 %53, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EWOULDBLOCK, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %63, i32* %3, align 4
  br label %114

64:                                               ; preds = %57, %42
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @EWOULDBLOCK, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %67, %64
  %73 = load %struct.bio*, %struct.bio** %5, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @REQ_RAHEAD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %80, i32* %3, align 4
  br label %114

81:                                               ; preds = %72
  %82 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %83 = load %struct.bio*, %struct.bio** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @queue_bio(%struct.mirror_set* %82, %struct.bio* %83, i32 %84)
  %86 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %86, i32* %3, align 4
  br label %114

87:                                               ; preds = %67
  %88 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %89 = load %struct.bio*, %struct.bio** %5, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.mirror* @choose_mirror(%struct.mirror_set* %88, i32 %92)
  store %struct.mirror* %93, %struct.mirror** %8, align 8
  %94 = load %struct.mirror*, %struct.mirror** %8, align 8
  %95 = icmp ne %struct.mirror* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %101, i32* %3, align 4
  br label %114

102:                                              ; preds = %87
  %103 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %11, align 8
  %104 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %103, i32 0, i32 1
  %105 = load %struct.bio*, %struct.bio** %5, align 8
  %106 = call i32 @dm_bio_record(%struct.TYPE_6__* %104, %struct.bio* %105)
  %107 = load %struct.mirror*, %struct.mirror** %8, align 8
  %108 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %11, align 8
  %109 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %108, i32 0, i32 0
  store %struct.mirror* %107, %struct.mirror** %109, align 8
  %110 = load %struct.mirror*, %struct.mirror** %8, align 8
  %111 = load %struct.bio*, %struct.bio** %5, align 8
  %112 = call i32 @map_bio(%struct.mirror* %110, %struct.bio* %111)
  %113 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %102, %100, %81, %79, %62, %29
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local %struct.dm_dirty_log* @dm_rh_dirty_log(i32) #1

declare dso_local %struct.dm_raid1_bio_record* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @dm_rh_bio_to_region(i32, %struct.bio*) #1

declare dso_local i32 @queue_bio(%struct.mirror_set*, %struct.bio*, i32) #1

declare dso_local %struct.mirror* @choose_mirror(%struct.mirror_set*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_bio_record(%struct.TYPE_6__*, %struct.bio*) #1

declare dso_local i32 @map_bio(%struct.mirror*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
