; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_controller_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_controller_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_controller = type { i32, i32, i64, i32*, i32 }

@con_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbox_controller_unregister(%struct.mbox_controller* %0) #0 {
  %2 = alloca %struct.mbox_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %2, align 8
  %4 = load %struct.mbox_controller*, %struct.mbox_controller** %2, align 8
  %5 = icmp ne %struct.mbox_controller* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %40

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @con_mutex)
  %9 = load %struct.mbox_controller*, %struct.mbox_controller** %2, align 8
  %10 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %9, i32 0, i32 4
  %11 = call i32 @list_del(i32* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %26, %7
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mbox_controller*, %struct.mbox_controller** %2, align 8
  %15 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.mbox_controller*, %struct.mbox_controller** %2, align 8
  %20 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @mbox_free_channel(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.mbox_controller*, %struct.mbox_controller** %2, align 8
  %31 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.mbox_controller*, %struct.mbox_controller** %2, align 8
  %36 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %35, i32 0, i32 1
  %37 = call i32 @hrtimer_cancel(i32* %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = call i32 @mutex_unlock(i32* @con_mutex)
  br label %40

40:                                               ; preds = %38, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mbox_free_channel(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
