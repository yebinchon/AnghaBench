; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_mq_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_mq_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.mapped_device* }
%struct.mapped_device = type { i64 }
%struct.request = type { i32 }
%struct.dm_rq_target_io = type { %struct.TYPE_2__, %struct.mapped_device* }
%struct.TYPE_2__ = type { %struct.dm_rq_target_io* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @dm_mq_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_mq_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.dm_rq_target_io*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %12 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %11, i32 0, i32 0
  %13 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  store %struct.mapped_device* %13, %struct.mapped_device** %9, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = call %struct.dm_rq_target_io* @blk_mq_rq_to_pdu(%struct.request* %14)
  store %struct.dm_rq_target_io* %15, %struct.dm_rq_target_io** %10, align 8
  %16 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %17 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %10, align 8
  %18 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %17, i32 0, i32 1
  store %struct.mapped_device* %16, %struct.mapped_device** %18, align 8
  %19 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %20 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %10, align 8
  %25 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %24, i64 1
  %26 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %10, align 8
  %27 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.dm_rq_target_io* %25, %struct.dm_rq_target_io** %28, align 8
  br label %29

29:                                               ; preds = %23, %4
  ret i32 0
}

declare dso_local %struct.dm_rq_target_io* @blk_mq_rq_to_pdu(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
