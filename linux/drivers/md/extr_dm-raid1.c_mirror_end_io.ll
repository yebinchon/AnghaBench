; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_mirror_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64 }
%struct.bio = type { i32, i64 }
%struct.mirror_set = type { i32 }
%struct.mirror = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_bio_details = type { i32* }
%struct.dm_raid1_bio_record = type { %struct.dm_bio_details, %struct.mirror*, i32 }

@WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DM_ENDIO_DONE = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i64 0, align 8
@REQ_RAHEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Mirror read failed.\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Mirror read failed from %s. Trying alternative device.\00", align 1
@DM_RAID1_READ_ERROR = common dso_local global i32 0, align 4
@DM_ENDIO_INCOMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"All replicated volumes dead, failing I/O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, i64*)* @mirror_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mirror_end_io(%struct.dm_target* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mirror_set*, align 8
  %10 = alloca %struct.mirror*, align 8
  %11 = alloca %struct.dm_bio_details*, align 8
  %12 = alloca %struct.dm_raid1_bio_record*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %6, align 8
  %14 = call i32 @bio_data_dir(%struct.bio* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mirror_set*
  store %struct.mirror_set* %18, %struct.mirror_set** %9, align 8
  store %struct.mirror* null, %struct.mirror** %10, align 8
  store %struct.dm_bio_details* null, %struct.dm_bio_details** %11, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = call %struct.dm_raid1_bio_record* @dm_per_bio_data(%struct.bio* %19, i32 24)
  store %struct.dm_raid1_bio_record* %20, %struct.dm_raid1_bio_record** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @WRITE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REQ_PREFLUSH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = call i64 @bio_op(%struct.bio* %32)
  %34 = load i64, i64* @REQ_OP_DISCARD, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %38 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %12, align 8
  %41 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dm_rh_dec(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %31, %24
  %45 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %45, i32* %4, align 4
  br label %119

46:                                               ; preds = %3
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BLK_STS_NOTSUPP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %114

52:                                               ; preds = %46
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @REQ_RAHEAD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %114

60:                                               ; preds = %52
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @unlikely(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %113

65:                                               ; preds = %60
  %66 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %12, align 8
  %67 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %73, i32* %4, align 4
  br label %119

74:                                               ; preds = %65
  %75 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %12, align 8
  %76 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %75, i32 0, i32 1
  %77 = load %struct.mirror*, %struct.mirror** %76, align 8
  store %struct.mirror* %77, %struct.mirror** %10, align 8
  %78 = load %struct.mirror*, %struct.mirror** %10, align 8
  %79 = getelementptr inbounds %struct.mirror, %struct.mirror* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.mirror*, %struct.mirror** %10, align 8
  %85 = load i32, i32* @DM_RAID1_READ_ERROR, align 4
  %86 = call i32 @fail_mirror(%struct.mirror* %84, i32 %85)
  %87 = load %struct.mirror*, %struct.mirror** %10, align 8
  %88 = call i64 @default_ok(%struct.mirror* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %74
  %91 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %92 = load %struct.bio*, %struct.bio** %6, align 8
  %93 = call i64 @mirror_available(%struct.mirror_set* %91, %struct.bio* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90, %74
  %96 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %12, align 8
  %97 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %96, i32 0, i32 0
  store %struct.dm_bio_details* %97, %struct.dm_bio_details** %11, align 8
  %98 = load %struct.dm_bio_details*, %struct.dm_bio_details** %11, align 8
  %99 = load %struct.bio*, %struct.bio** %6, align 8
  %100 = call i32 @dm_bio_restore(%struct.dm_bio_details* %98, %struct.bio* %99)
  %101 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %12, align 8
  %102 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load %struct.bio*, %struct.bio** %6, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.mirror_set*, %struct.mirror_set** %9, align 8
  %107 = load %struct.bio*, %struct.bio** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @queue_bio(%struct.mirror_set* %106, %struct.bio* %107, i32 %108)
  %110 = load i32, i32* @DM_ENDIO_INCOMPLETE, align 4
  store i32 %110, i32* %4, align 4
  br label %119

111:                                              ; preds = %90
  %112 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %60
  br label %114

114:                                              ; preds = %113, %59, %51
  %115 = load %struct.dm_raid1_bio_record*, %struct.dm_raid1_bio_record** %12, align 8
  %116 = getelementptr inbounds %struct.dm_raid1_bio_record, %struct.dm_raid1_bio_record* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* @DM_ENDIO_DONE, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %114, %95, %71, %44
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local %struct.dm_raid1_bio_record* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @dm_rh_dec(i32, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @DMERR_LIMIT(i8*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @fail_mirror(%struct.mirror*, i32) #1

declare dso_local i64 @default_ok(%struct.mirror*) #1

declare dso_local i64 @mirror_available(%struct.mirror_set*, %struct.bio*) #1

declare dso_local i32 @dm_bio_restore(%struct.dm_bio_details*, %struct.bio*) #1

declare dso_local i32 @queue_bio(%struct.mirror_set*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
