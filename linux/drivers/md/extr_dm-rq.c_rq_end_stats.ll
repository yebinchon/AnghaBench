; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_rq_end_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_rq_end_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.request = type { i32 }
%struct.dm_rq_target_io = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.request*)* @rq_end_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rq_end_stats(%struct.mapped_device* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.dm_rq_target_io*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %7 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %6, i32 0, i32 0
  %8 = call i32 @dm_stats_used(i32* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call %struct.dm_rq_target_io* @tio_from_request(%struct.request* %12)
  store %struct.dm_rq_target_io* %13, %struct.dm_rq_target_io** %5, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %16 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %20 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 0
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i32 @rq_data_dir(%struct.request* %23)
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call i32 @blk_rq_pos(%struct.request* %25)
  %27 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %28 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %31 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %34 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %33, i32 0, i32 0
  %35 = call i32 @dm_stats_account_io(i32* %22, i32 %24, i32 %26, i32 %29, i32 1, i64 %32, i32* %34)
  br label %36

36:                                               ; preds = %11, %2
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_stats_used(i32*) #1

declare dso_local %struct.dm_rq_target_io* @tio_from_request(%struct.request*) #1

declare dso_local i32 @dm_stats_account_io(i32*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
