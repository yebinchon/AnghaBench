; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.dm_rq_target_io* }
%struct.dm_rq_target_io = type { %struct.TYPE_4__*, %struct.request*, %struct.mapped_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.request*, i32*)* }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @dm_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_end_request(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_rq_target_io*, align 8
  %6 = alloca %struct.mapped_device*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %9, align 8
  store %struct.dm_rq_target_io* %10, %struct.dm_rq_target_io** %5, align 8
  %11 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %12 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %11, i32 0, i32 2
  %13 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  store %struct.mapped_device* %13, %struct.mapped_device** %6, align 8
  %14 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %15 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %14, i32 0, i32 1
  %16 = load %struct.request*, %struct.request** %15, align 8
  store %struct.request* %16, %struct.request** %7, align 8
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = call i32 @blk_rq_unprep_clone(%struct.request* %17)
  %19 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %5, align 8
  %20 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.request*, i32*)*, i32 (%struct.request*, i32*)** %24, align 8
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = call i32 %25(%struct.request* %26, i32* null)
  %28 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %29 = load %struct.request*, %struct.request** %7, align 8
  %30 = call i32 @rq_end_stats(%struct.mapped_device* %28, %struct.request* %29)
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @blk_mq_end_request(%struct.request* %31, i32 %32)
  %34 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %35 = call i32 @rq_completed(%struct.mapped_device* %34)
  ret void
}

declare dso_local i32 @blk_rq_unprep_clone(%struct.request*) #1

declare dso_local i32 @rq_end_stats(%struct.mapped_device*, %struct.request*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @rq_completed(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
