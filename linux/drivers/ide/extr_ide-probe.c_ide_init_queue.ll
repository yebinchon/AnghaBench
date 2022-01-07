; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.request_queue*, %struct.blk_mq_tag_set, %struct.TYPE_5__* }
%struct.request_queue = type { %struct.TYPE_6__* }
%struct.blk_mq_tag_set = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@PRD_ENTRIES = common dso_local global i32 0, align 4
@ide_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@QUEUE_FLAG_SCSI_PASSTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ide_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_init_queue(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_tag_set*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  store i32 256, i32* %6, align 4
  %12 = load i32, i32* @PRD_ENTRIES, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.blk_mq_tag_set* %14, %struct.blk_mq_tag_set** %8, align 8
  %15 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %16 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %15, i32 0, i32 6
  store i32* @ide_mq_ops, i32** %16, align 8
  %17 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %18 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %20 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %19, i32 0, i32 1
  store i32 32, i32* %20, align 4
  %21 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %22 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 3
  store i32 4, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = call i32 @hwif_to_node(%struct.TYPE_5__* %25)
  %27 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %28 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %30 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %33 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %35 = call i64 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %75

38:                                               ; preds = %1
  %39 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %40 = call %struct.request_queue* @blk_mq_init_queue(%struct.blk_mq_tag_set* %39)
  store %struct.request_queue* %40, %struct.request_queue** %4, align 8
  %41 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %42 = call i64 @IS_ERR(%struct.request_queue* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %8, align 8
  %46 = call i32 @blk_mq_free_tag_set(%struct.blk_mq_tag_set* %45)
  store i32 1, i32* %2, align 4
  br label %75

47:                                               ; preds = %38
  %48 = load i32, i32* @QUEUE_FLAG_SCSI_PASSTHROUGH, align 4
  %49 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %50 = call i32 @blk_queue_flag_set(i32 %48, %struct.request_queue* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %53 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %52, i32 0, i32 0
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %55 = call i32 @blk_queue_segment_boundary(%struct.request_queue* %54, i32 65535)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %47
  %66 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %66, i32 %67)
  %69 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @blk_queue_max_segments(%struct.request_queue* %69, i32 %70)
  %72 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store %struct.request_queue* %72, %struct.request_queue** %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %44, %37
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @hwif_to_node(%struct.TYPE_5__*) #1

declare dso_local i64 @blk_mq_alloc_tag_set(%struct.blk_mq_tag_set*) #1

declare dso_local %struct.request_queue* @blk_mq_init_queue(%struct.blk_mq_tag_set*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.blk_mq_tag_set*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
