; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_merge_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_merge_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i64, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dm_exception = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @snapshot_merge_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_merge_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_exception*, align 8
  %7 = alloca %struct.dm_snapshot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %10 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %11 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %10, i32 0, i32 0
  %12 = load %struct.dm_snapshot*, %struct.dm_snapshot** %11, align 8
  store %struct.dm_snapshot* %12, %struct.dm_snapshot** %7, align 8
  %13 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = call i32 @init_tracked_chunk(%struct.bio* %14)
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REQ_PREFLUSH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = call i32 @dm_bio_get_target_bio_nr(%struct.bio* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %29 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bio_set_dev(%struct.bio* %27, i32 %32)
  br label %42

34:                                               ; preds = %22
  %35 = load %struct.bio*, %struct.bio** %5, align 8
  %36 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %37 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %36, i32 0, i32 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bio_set_dev(%struct.bio* %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %43, i32* %3, align 4
  br label %158

44:                                               ; preds = %2
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = call i64 @bio_op(%struct.bio* %45)
  %47 = load i64, i64* @REQ_OP_DISCARD, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = call i32 @bio_endio(%struct.bio* %53)
  %55 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %55, i32* %3, align 4
  br label %158

56:                                               ; preds = %44
  %57 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %58 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bio*, %struct.bio** %5, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @sector_to_chunk(i32 %59, i32 %63)
  store i64 %64, i64* %9, align 8
  %65 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %66 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %65, i32 0, i32 2
  %67 = call i32 @down_write(i32* %66)
  %68 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %69 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %56
  br label %131

73:                                               ; preds = %56
  %74 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %75 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %74, i32 0, i32 5
  %76 = load i64, i64* %9, align 8
  %77 = call %struct.dm_exception* @dm_lookup_exception(i32* %75, i64 %76)
  store %struct.dm_exception* %77, %struct.dm_exception** %6, align 8
  %78 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %79 = icmp ne %struct.dm_exception* %78, null
  br i1 %79, label %80, label %130

80:                                               ; preds = %73
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  %82 = call i64 @bio_data_dir(%struct.bio* %81)
  %83 = load i64, i64* @WRITE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %80
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %88 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %86, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %85
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %94 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %97 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = icmp slt i64 %92, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %91
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %104 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bio_set_dev(%struct.bio* %102, i32 %107)
  %109 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %110 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %109, i32 0, i32 4
  %111 = load %struct.bio*, %struct.bio** %5, align 8
  %112 = call i32 @bio_list_add(i32* %110, %struct.bio* %111)
  %113 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %113, i32* %8, align 4
  br label %153

114:                                              ; preds = %91, %85, %80
  %115 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %116 = load %struct.dm_exception*, %struct.dm_exception** %6, align 8
  %117 = load %struct.bio*, %struct.bio** %5, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @remap_exception(%struct.dm_snapshot* %115, %struct.dm_exception* %116, %struct.bio* %117, i64 %118)
  %120 = load %struct.bio*, %struct.bio** %5, align 8
  %121 = call i64 @bio_data_dir(%struct.bio* %120)
  %122 = load i64, i64* @WRITE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %126 = load %struct.bio*, %struct.bio** %5, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @track_chunk(%struct.dm_snapshot* %125, %struct.bio* %126, i64 %127)
  br label %129

129:                                              ; preds = %124, %114
  br label %153

130:                                              ; preds = %73
  br label %131

131:                                              ; preds = %130, %72
  %132 = load %struct.bio*, %struct.bio** %5, align 8
  %133 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %134 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bio_set_dev(%struct.bio* %132, i32 %137)
  %139 = load %struct.bio*, %struct.bio** %5, align 8
  %140 = call i64 @bio_data_dir(%struct.bio* %139)
  %141 = load i64, i64* @WRITE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %131
  %144 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %145 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %144, i32 0, i32 2
  %146 = call i32 @up_write(i32* %145)
  %147 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %148 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load %struct.bio*, %struct.bio** %5, align 8
  %151 = call i32 @do_origin(%struct.TYPE_6__* %149, %struct.bio* %150, i32 0)
  store i32 %151, i32* %3, align 4
  br label %158

152:                                              ; preds = %131
  br label %153

153:                                              ; preds = %152, %129, %101
  %154 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %155 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %154, i32 0, i32 2
  %156 = call i32 @up_write(i32* %155)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %143, %52, %42
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @init_tracked_chunk(%struct.bio*) #1

declare dso_local i32 @dm_bio_get_target_bio_nr(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @sector_to_chunk(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.dm_exception* @dm_lookup_exception(i32*, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @remap_exception(%struct.dm_snapshot*, %struct.dm_exception*, %struct.bio*, i64) #1

declare dso_local i32 @track_chunk(%struct.dm_snapshot*, %struct.bio*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @do_origin(%struct.TYPE_6__*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
