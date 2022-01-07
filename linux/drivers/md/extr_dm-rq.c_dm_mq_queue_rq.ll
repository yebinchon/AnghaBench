; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_mq_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_mq_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.dm_rq_target_io = type { %struct.dm_target*, %struct.mapped_device* }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_target*)* }
%struct.mapped_device = type { %struct.dm_target* }
%struct.dm_table = type { i32 }

@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@DM_MAPIO_REQUEUE = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @dm_mq_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_mq_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.dm_rq_target_io*, align 8
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca %struct.dm_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_table*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %12 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %13 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %12, i32 0, i32 0
  %14 = load %struct.request*, %struct.request** %13, align 8
  store %struct.request* %14, %struct.request** %6, align 8
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = call %struct.dm_rq_target_io* @blk_mq_rq_to_pdu(%struct.request* %15)
  store %struct.dm_rq_target_io* %16, %struct.dm_rq_target_io** %7, align 8
  %17 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %18 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %17, i32 0, i32 1
  %19 = load %struct.mapped_device*, %struct.mapped_device** %18, align 8
  store %struct.mapped_device* %19, %struct.mapped_device** %8, align 8
  %20 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %21 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %20, i32 0, i32 0
  %22 = load %struct.dm_target*, %struct.dm_target** %21, align 8
  store %struct.dm_target* %22, %struct.dm_target** %9, align 8
  %23 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %24 = icmp ne %struct.dm_target* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %31 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %30, i32* %10)
  store %struct.dm_table* %31, %struct.dm_table** %11, align 8
  %32 = load %struct.dm_table*, %struct.dm_table** %11, align 8
  %33 = call %struct.dm_target* @dm_table_find_target(%struct.dm_table* %32, i32 0)
  store %struct.dm_target* %33, %struct.dm_target** %9, align 8
  %34 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dm_put_live_table(%struct.mapped_device* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %2
  %38 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %39 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64 (%struct.dm_target*)*, i64 (%struct.dm_target*)** %41, align 8
  %43 = icmp ne i64 (%struct.dm_target*)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %46 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64 (%struct.dm_target*)*, i64 (%struct.dm_target*)** %48, align 8
  %50 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %51 = call i64 %49(%struct.dm_target* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %54, i32* %3, align 4
  br label %79

55:                                               ; preds = %44, %37
  %56 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %57 = load %struct.request*, %struct.request** %6, align 8
  %58 = call i32 @dm_start_request(%struct.mapped_device* %56, %struct.request* %57)
  %59 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %60 = load %struct.request*, %struct.request** %6, align 8
  %61 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %62 = call i32 @init_tio(%struct.dm_rq_target_io* %59, %struct.request* %60, %struct.mapped_device* %61)
  %63 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %64 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %65 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %64, i32 0, i32 0
  store %struct.dm_target* %63, %struct.dm_target** %65, align 8
  %66 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %7, align 8
  %67 = call i64 @map_request(%struct.dm_rq_target_io* %66)
  %68 = load i64, i64* @DM_MAPIO_REQUEUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %55
  %71 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %72 = load %struct.request*, %struct.request** %6, align 8
  %73 = call i32 @rq_end_stats(%struct.mapped_device* %71, %struct.request* %72)
  %74 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %75 = call i32 @rq_completed(%struct.mapped_device* %74)
  %76 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %55
  %78 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %70, %53
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.dm_rq_target_io* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*, i32*) #1

declare dso_local %struct.dm_target* @dm_table_find_target(%struct.dm_table*, i32) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

declare dso_local i32 @dm_start_request(%struct.mapped_device*, %struct.request*) #1

declare dso_local i32 @init_tio(%struct.dm_rq_target_io*, %struct.request*, %struct.mapped_device*) #1

declare dso_local i64 @map_request(%struct.dm_rq_target_io*) #1

declare dso_local i32 @rq_end_stats(%struct.mapped_device*, %struct.request*) #1

declare dso_local i32 @rq_completed(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
