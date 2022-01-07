; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_write_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_write_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_write_ts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.pblk*
  store %struct.pblk* %7, %struct.pblk** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %20, %1
  %9 = call i32 (...) @kthread_should_stop()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load %struct.pblk*, %struct.pblk** %3, align 8
  %17 = call i32 @pblk_submit_write(%struct.pblk* %16, i32* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %8

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  %25 = call i32 (...) @io_schedule()
  br label %8

26:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @pblk_submit_write(%struct.pblk*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @io_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
