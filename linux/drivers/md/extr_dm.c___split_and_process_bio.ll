; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___split_and_process_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___split_and_process_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.mapped_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dm_table = type { i32 }
%struct.bio = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.clone_info = type { %struct.TYPE_9__*, i64, %struct.bio* }
%struct.TYPE_9__ = type { %struct.bio* }
%struct.TYPE_8__ = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_OP_ZONE_RESET = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@sectors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, %struct.dm_table*, %struct.bio*)* @__split_and_process_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__split_and_process_bio(%struct.mapped_device* %0, %struct.dm_table* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.clone_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio, align 4
  %11 = alloca %struct.bio*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_table* %1, %struct.dm_table** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %12 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %14 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = call i32 @init_clone_info(%struct.clone_info* %7, %struct.mapped_device* %13, %struct.dm_table* %14, %struct.bio* %15)
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ_PREFLUSH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = call i32 @bio_init(%struct.bio* %10, i32* null, i32 0)
  %25 = load i32, i32* @REQ_OP_WRITE, align 4
  %26 = load i32, i32* @REQ_PREFLUSH, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @REQ_SYNC, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 2
  store %struct.bio* %10, %struct.bio** %31, align 8
  %32 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = call i32 @__send_empty_flush(%struct.clone_info* %7)
  store i32 %33, i32* %9, align 4
  br label %121

34:                                               ; preds = %3
  %35 = load %struct.bio*, %struct.bio** %6, align 8
  %36 = call i64 @bio_op(%struct.bio* %35)
  %37 = load i64, i64* @REQ_OP_ZONE_RESET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  %41 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 2
  store %struct.bio* %40, %struct.bio** %41, align 8
  %42 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = call i32 @__split_and_process_non_flush(%struct.clone_info* %7)
  store i32 %43, i32* %9, align 4
  br label %120

44:                                               ; preds = %34
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 2
  store %struct.bio* %45, %struct.bio** %46, align 8
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  %48 = call i64 @bio_sectors(%struct.bio* %47)
  %49 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %118, %44
  %51 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %119

60:                                               ; preds = %58
  %61 = call i32 @__split_and_process_non_flush(%struct.clone_info* %7)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %118

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %118

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %70
  %74 = load %struct.bio*, %struct.bio** %6, align 8
  %75 = load %struct.bio*, %struct.bio** %6, align 8
  %76 = call i64 @bio_sectors(%struct.bio* %75)
  %77 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = load i32, i32* @GFP_NOIO, align 4
  %81 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %82 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = call %struct.bio* @bio_split(%struct.bio* %74, i64 %79, i32 %80, i32* %84)
  store %struct.bio* %85, %struct.bio** %11, align 8
  %86 = load %struct.bio*, %struct.bio** %11, align 8
  %87 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store %struct.bio* %86, %struct.bio** %89, align 8
  %90 = call i32 (...) @part_stat_lock()
  %91 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %92 = call %struct.TYPE_8__* @dm_disk(%struct.mapped_device* %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32*, i32** @sectors, align 8
  %95 = load %struct.bio*, %struct.bio** %6, align 8
  %96 = call i64 @bio_op(%struct.bio* %95)
  %97 = call i64 @op_stat_group(i64 %96)
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @__dm_part_stat_sub(i32* %93, i32 %99, i64 %101)
  %103 = call i32 (...) @part_stat_unlock()
  %104 = load %struct.bio*, %struct.bio** %11, align 8
  %105 = load %struct.bio*, %struct.bio** %6, align 8
  %106 = call i32 @bio_chain(%struct.bio* %104, %struct.bio* %105)
  %107 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %108 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load %struct.bio*, %struct.bio** %11, align 8
  %111 = load %struct.bio*, %struct.bio** %6, align 8
  %112 = getelementptr inbounds %struct.bio, %struct.bio* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @trace_block_split(%struct.TYPE_7__* %109, %struct.bio* %110, i32 %114)
  %116 = load %struct.bio*, %struct.bio** %6, align 8
  %117 = call i32 @generic_make_request(%struct.bio* %116)
  store i32 %117, i32* %8, align 4
  br label %119

118:                                              ; preds = %70, %66, %60
  br label %50

119:                                              ; preds = %73, %58
  br label %120

120:                                              ; preds = %119, %39
  br label %121

121:                                              ; preds = %120, %23
  %122 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @errno_to_blk_status(i32 %124)
  %126 = call i32 @dec_pending(%struct.TYPE_9__* %123, i32 %125)
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @init_clone_info(%struct.clone_info*, %struct.mapped_device*, %struct.dm_table*, %struct.bio*) #1

declare dso_local i32 @bio_init(%struct.bio*, i32*, i32) #1

declare dso_local i32 @__send_empty_flush(%struct.clone_info*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @__split_and_process_non_flush(%struct.clone_info*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i64, i32, i32*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @__dm_part_stat_sub(i32*, i32, i64) #1

declare dso_local %struct.TYPE_8__* @dm_disk(%struct.mapped_device*) #1

declare dso_local i64 @op_stat_group(i64) #1

declare dso_local i32 @part_stat_unlock(...) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @trace_block_split(%struct.TYPE_7__*, %struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @dec_pending(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @errno_to_blk_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
