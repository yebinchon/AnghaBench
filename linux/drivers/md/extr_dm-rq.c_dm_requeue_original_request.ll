; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_requeue_original_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-rq.c_dm_requeue_original_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_rq_target_io = type { i64, %struct.TYPE_4__*, %struct.request*, %struct.mapped_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64, i32*)* }
%struct.request = type { i32 }
%struct.mapped_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_rq_target_io*, i32)* @dm_requeue_original_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_requeue_original_request(%struct.dm_rq_target_io* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_rq_target_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_rq_target_io* %0, %struct.dm_rq_target_io** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %9 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %8, i32 0, i32 3
  %10 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  store %struct.mapped_device* %10, %struct.mapped_device** %5, align 8
  %11 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %12 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %11, i32 0, i32 2
  %13 = load %struct.request*, %struct.request** %12, align 8
  store %struct.request* %13, %struct.request** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 100, i32 0
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = call i32 @rq_end_stats(%struct.mapped_device* %19, %struct.request* %20)
  %22 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %23 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %28 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @blk_rq_unprep_clone(i64 %29)
  %31 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %32 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (i64, i32*)*, i32 (i64, i32*)** %36, align 8
  %38 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %3, align 8
  %39 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 %37(i64 %40, i32* null)
  br label %42

42:                                               ; preds = %26, %2
  %43 = load %struct.request*, %struct.request** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @dm_mq_delay_requeue_request(%struct.request* %43, i64 %44)
  %46 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %47 = call i32 @rq_completed(%struct.mapped_device* %46)
  ret void
}

declare dso_local i32 @rq_end_stats(%struct.mapped_device*, %struct.request*) #1

declare dso_local i32 @blk_rq_unprep_clone(i64) #1

declare dso_local i32 @dm_mq_delay_requeue_request(%struct.request*, i64) #1

declare dso_local i32 @rq_completed(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
