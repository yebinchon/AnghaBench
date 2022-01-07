; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_post_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_post_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_event = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }

@i40iw_cm_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_event*)* @i40iw_cm_post_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cm_post_event(%struct.i40iw_cm_event* %0) #0 {
  %2 = alloca %struct.i40iw_cm_event*, align 8
  store %struct.i40iw_cm_event* %0, %struct.i40iw_cm_event** %2, align 8
  %3 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %4 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = call i32 @atomic_inc(i32* %6)
  %8 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %12, align 8
  %14 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %15 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i32 %13(%struct.TYPE_8__* %17)
  %19 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %20 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %19, i32 0, i32 0
  %21 = load i32, i32* @i40iw_cm_event_handler, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %24 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %31 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %30, i32 0, i32 0
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
