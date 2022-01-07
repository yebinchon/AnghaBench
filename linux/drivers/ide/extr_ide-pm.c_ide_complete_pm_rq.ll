; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pm.c_ide_complete_pm_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-pm.c_ide_complete_pm_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32, %struct.request_queue* }
%struct.TYPE_6__ = type { i32* }
%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.ide_pm_state = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.ide_pm_state* }

@IDE_PM_COMPLETED = common dso_local global i64 0, align 8
@ATA_PRIV_PM_SUSPEND = common dso_local global i64 0, align 8
@IDE_DFLAG_BLOCKED = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_complete_pm_rq(%struct.TYPE_7__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.ide_pm_state*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %5, align 8
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call %struct.TYPE_8__* @ide_req(%struct.request* %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.ide_pm_state*, %struct.ide_pm_state** %12, align 8
  store %struct.ide_pm_state* %13, %struct.ide_pm_state** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i32 @ide_complete_power_step(%struct.TYPE_7__* %14, %struct.request* %15)
  %17 = load %struct.ide_pm_state*, %struct.ide_pm_state** %6, align 8
  %18 = getelementptr inbounds %struct.ide_pm_state, %struct.ide_pm_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IDE_PM_COMPLETED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call %struct.TYPE_8__* @ide_req(%struct.request* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ATA_PRIV_PM_SUSPEND, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %32 = call i32 @blk_mq_stop_hw_queues(%struct.request_queue* %31)
  br label %40

33:                                               ; preds = %23
  %34 = load i32, i32* @IDE_DFLAG_BLOCKED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = load i32, i32* @BLK_STS_OK, align 4
  %47 = call i32 @blk_mq_end_request(%struct.request* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %22
  ret void
}

declare dso_local %struct.TYPE_8__* @ide_req(%struct.request*) #1

declare dso_local i32 @ide_complete_power_step(%struct.TYPE_7__*, %struct.request*) #1

declare dso_local i32 @blk_mq_stop_hw_queues(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
