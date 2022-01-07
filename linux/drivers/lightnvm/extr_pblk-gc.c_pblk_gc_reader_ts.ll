; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_reader_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_reader_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pblk_gc_reader_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_gc_reader_ts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_gc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.pblk*
  store %struct.pblk* %6, %struct.pblk** %3, align 8
  %7 = load %struct.pblk*, %struct.pblk** %3, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 0
  store %struct.pblk_gc* %8, %struct.pblk_gc** %4, align 8
  br label %9

9:                                                ; preds = %18, %17, %1
  %10 = call i32 (...) @kthread_should_stop()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.pblk*, %struct.pblk** %3, align 8
  %15 = call i32 @pblk_gc_read(%struct.pblk* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %9

18:                                               ; preds = %13
  %19 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %20 = call i32 @set_current_state(i32 %19)
  %21 = call i32 (...) @io_schedule()
  br label %9

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %31, %22
  %24 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %25 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %32

29:                                               ; preds = %23
  %30 = call i32 (...) @schedule()
  br label %31

31:                                               ; preds = %29
  br i1 true, label %23, label %32

32:                                               ; preds = %31, %28
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @pblk_gc_read(%struct.pblk*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
