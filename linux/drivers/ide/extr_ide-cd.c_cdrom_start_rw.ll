; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_start_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_cdrom_start_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.request_queue*, %struct.cdrom_info* }
%struct.request_queue = type { i32 }
%struct.cdrom_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.request = type { i32, i32, i32* }

@WRITE = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i16 0, align 2
@IDE_DBG_RQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"rq->cmd[0]: 0x%x, rq->cmd_flags: 0x%x, secs_per_frame: %u\00", align 1
@ide_stopped = common dso_local global i32 0, align 4
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@ATAPI_WAIT_PC = common dso_local global i32 0, align 4
@ide_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.request*)* @cdrom_start_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_start_rw(%struct.TYPE_6__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.cdrom_info*, %struct.cdrom_info** %11, align 8
  store %struct.cdrom_info* %12, %struct.cdrom_info** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %7, align 8
  %16 = load %struct.request*, %struct.request** %5, align 8
  %17 = call i64 @rq_data_dir(%struct.request* %16)
  %18 = load i64, i64* @WRITE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %22 = call zeroext i16 @queue_logical_block_size(%struct.request_queue* %21)
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @SECTOR_SHIFT, align 2
  %25 = zext i16 %24 to i32
  %26 = ashr i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %9, align 2
  %28 = load i32, i32* @IDE_DBG_RQ, align 4
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.request*, %struct.request** %5, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i16, i16* %9, align 2
  %38 = call i32 @ide_debug_log(i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i16 zeroext %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %43 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @get_disk_ro(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ide_stopped, align 4
  store i32 %48, i32* %3, align 4
  br label %97

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load %struct.request*, %struct.request** %5, align 8
  %53 = call i32 @ide_cdrom_prep_rq(%struct.TYPE_6__* %51, %struct.request* %52)
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.request*, %struct.request** %5, align 8
  %56 = call zeroext i16 @blk_rq_sectors(%struct.request* %55)
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* %9, align 2
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.request*, %struct.request** %5, align 8
  %65 = call zeroext i16 @blk_rq_pos(%struct.request* %64)
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* %9, align 2
  %68 = zext i16 %67 to i32
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63, %54
  %73 = load i32, i32* @ide_stopped, align 4
  store i32 %73, i32* %3, align 4
  br label %97

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %90 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %74
  %93 = load i32, i32* @ATAPI_WAIT_PC, align 4
  %94 = load %struct.request*, %struct.request** %5, align 8
  %95 = getelementptr inbounds %struct.request, %struct.request* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @ide_started, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %72, %47
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local zeroext i16 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32, i16 zeroext) #1

declare dso_local i64 @get_disk_ro(i32) #1

declare dso_local i32 @ide_cdrom_prep_rq(%struct.TYPE_6__*, %struct.request*) #1

declare dso_local zeroext i16 @blk_rq_sectors(%struct.request*) #1

declare dso_local zeroext i16 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
