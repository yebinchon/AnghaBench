; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_timerdev.c_dev_expire_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_timerdev.c_dev_expire_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNtimer = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@tl = common dso_local global i32 0, align 4
@timer = common dso_local global %struct.mISDNtimer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dev_expire_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_expire_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.mISDNtimer*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %6 = ptrtoint %struct.mISDNtimer* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tl, align 4
  %9 = call %struct.mISDNtimer* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.mISDNtimer* %9, %struct.mISDNtimer** %3, align 8
  %10 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %11 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %17 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %22 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %21, i32 0, i32 2
  %23 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %24 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = call i32 @list_move_tail(i32* %22, i32* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %30 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @wake_up_interruptible(i32* %32)
  %34 = load %struct.mISDNtimer*, %struct.mISDNtimer** %3, align 8
  %35 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i32 %38)
  ret void
}

declare dso_local %struct.mISDNtimer* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
