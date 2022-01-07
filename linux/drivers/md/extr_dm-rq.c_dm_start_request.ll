; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.request = type { i32 }
%struct.dm_rq_target_io = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.request*)* @dm_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_start_request(%struct.mapped_device* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.dm_rq_target_io*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i32 @blk_mq_start_request(%struct.request* %6)
  %8 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %9 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %8, i32 0, i32 0
  %10 = call i32 @dm_stats_used(i32* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = call %struct.dm_rq_target_io* @tio_from_request(%struct.request* %14)
  store %struct.dm_rq_target_io* %15, %struct.dm_rq_target_io** %5, align 8
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %18 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = call i32 @blk_rq_sectors(%struct.request* %19)
  %21 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %22 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %24 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %23, i32 0, i32 0
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call i32 @rq_data_dir(%struct.request* %25)
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call i32 @blk_rq_pos(%struct.request* %27)
  %29 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %30 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %33 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %32, i32 0, i32 0
  %34 = call i32 @dm_stats_account_io(i32* %24, i32 %26, i32 %28, i32 %31, i32 0, i32 0, i32* %33)
  br label %35

35:                                               ; preds = %13, %2
  %36 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %37 = call i32 @dm_get(%struct.mapped_device* %36)
  ret void
}

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_stats_used(i32*) #1

declare dso_local %struct.dm_rq_target_io* @tio_from_request(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @dm_stats_account_io(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @dm_get(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
