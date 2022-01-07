; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_mq_init_request_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_mq_init_request_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.mapped_device*, i32, i32, i32, i32, i32* }
%struct.dm_table = type { i32 }
%struct.request_queue = type { i32 }
%struct.dm_target = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dm_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_mq_init_request_queue(%struct.mapped_device* %0, %struct.dm_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store %struct.dm_table* %1, %struct.dm_table** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %11 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @kzalloc_node(i32 4, i32 %9, i32 %12)
  %14 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %15 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %14, i32 0, i32 1
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %15, align 8
  %16 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %116

23:                                               ; preds = %2
  %24 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 6
  store i32* @dm_mq_ops, i32** %27, align 8
  %28 = call i32 (...) @dm_get_blk_mq_queue_depth()
  %29 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %30 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i32 %28, i32* %32, align 4
  %33 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %34 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %37 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %41 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %42 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 4
  %45 = call i32 (...) @dm_get_blk_mq_nr_hw_queues()
  %46 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %47 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 8
  %50 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %51 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %52 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store %struct.mapped_device* %50, %struct.mapped_device** %54, align 8
  %55 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %56 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 4, i32* %58, align 8
  %59 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %60 = call %struct.dm_target* @dm_table_get_immutable_target(%struct.dm_table* %59)
  store %struct.dm_target* %60, %struct.dm_target** %7, align 8
  %61 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %62 = icmp ne %struct.dm_target* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %23
  %64 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %65 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %70 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %73 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %71
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %81 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %68, %63, %23
  %83 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %84 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @blk_mq_alloc_tag_set(%struct.TYPE_6__* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %110

90:                                               ; preds = %82
  %91 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %92 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %95 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.request_queue* @blk_mq_init_allocated_queue(%struct.TYPE_6__* %93, i32 %96, i32 1)
  store %struct.request_queue* %97, %struct.request_queue** %6, align 8
  %98 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %99 = call i64 @IS_ERR(%struct.request_queue* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %103 = call i32 @PTR_ERR(%struct.request_queue* %102)
  store i32 %103, i32* %8, align 4
  br label %105

104:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %116

105:                                              ; preds = %101
  %106 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %107 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = call i32 @blk_mq_free_tag_set(%struct.TYPE_6__* %108)
  br label %110

110:                                              ; preds = %105, %89
  %111 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %112 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = call i32 @kfree(%struct.TYPE_6__* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %104, %20
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_6__* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @dm_get_blk_mq_queue_depth(...) #1

declare dso_local i32 @dm_get_blk_mq_nr_hw_queues(...) #1

declare dso_local %struct.dm_target* @dm_table_get_immutable_target(%struct.dm_table*) #1

declare dso_local i32 @blk_mq_alloc_tag_set(%struct.TYPE_6__*) #1

declare dso_local %struct.request_queue* @blk_mq_init_allocated_queue(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @PTR_ERR(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_free_tag_set(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
