; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }
%struct.char_queue = type { i32, i32 }

@cs_char_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Can't allocate new entry for the queue.\0A\00", align 1
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.list_head*)* @cs_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_notify(i32 %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.char_queue*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 4), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  br label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.char_queue* @kmalloc(i32 8, i32 %12)
  store %struct.char_queue* %13, %struct.char_queue** %5, align 8
  %14 = load %struct.char_queue*, %struct.char_queue** %5, align 8
  %15 = icmp ne %struct.char_queue* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 3), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  br label %34

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.char_queue*, %struct.char_queue** %5, align 8
  %24 = getelementptr inbounds %struct.char_queue, %struct.char_queue* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.char_queue*, %struct.char_queue** %5, align 8
  %26 = getelementptr inbounds %struct.char_queue, %struct.char_queue* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %4, align 8
  %28 = call i32 @list_add_tail(i32* %26, %struct.list_head* %27)
  %29 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 2))
  %30 = call i32 @wake_up_interruptible(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 1))
  %31 = load i32, i32* @SIGIO, align 4
  %32 = load i32, i32* @POLL_IN, align 4
  %33 = call i32 @kill_fasync(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cs_char_data, i32 0, i32 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %16, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.char_queue* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
