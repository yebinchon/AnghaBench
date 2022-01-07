; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_softirq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_softirq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.dm_rq_target_io = type { i32, %struct.mapped_device*, %struct.request* }
%struct.mapped_device = type { i32 }

@RQF_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @dm_softirq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_softirq_done(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_rq_target_io*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  store i32 1, i32* %3, align 4
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = call %struct.dm_rq_target_io* @tio_from_request(%struct.request* %7)
  store %struct.dm_rq_target_io* %8, %struct.dm_rq_target_io** %4, align 8
  %9 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %10 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %9, i32 0, i32 2
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %5, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = icmp ne %struct.request* %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %16 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %15, i32 0, i32 1
  %17 = load %struct.mapped_device*, %struct.mapped_device** %16, align 8
  store %struct.mapped_device* %17, %struct.mapped_device** %6, align 8
  %18 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = call i32 @rq_end_stats(%struct.mapped_device* %18, %struct.request* %19)
  %21 = load %struct.request*, %struct.request** %2, align 8
  %22 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %23 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @blk_mq_end_request(%struct.request* %21, i32 %24)
  %26 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %27 = call i32 @rq_completed(%struct.mapped_device* %26)
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RQF_FAILED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %4, align 8
  %39 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dm_done(%struct.request* %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %14
  ret void
}

declare dso_local %struct.dm_rq_target_io* @tio_from_request(%struct.request*) #1

declare dso_local i32 @rq_end_stats(%struct.mapped_device*, %struct.request*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @rq_completed(%struct.mapped_device*) #1

declare dso_local i32 @dm_done(%struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
