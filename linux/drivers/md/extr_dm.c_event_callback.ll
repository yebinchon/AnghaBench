; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@uevents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mapped_device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @uevents, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mapped_device*
  store %struct.mapped_device* %8, %struct.mapped_device** %4, align 8
  %9 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 3
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 4
  %15 = call i32 @list_splice_init(i32* %14, i32* @uevents)
  %16 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 3
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %21 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_2__* @disk_to_dev(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dm_send_uevents(i32* @uevents, i32* %24)
  %26 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %27 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %26, i32 0, i32 1
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %30 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %29, i32 0, i32 0
  %31 = call i32 @wake_up(i32* %30)
  %32 = call i32 (...) @dm_issue_global_event()
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm_send_uevents(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dm_issue_global_event(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
