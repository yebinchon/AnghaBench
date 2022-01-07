; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.ppl_conf* }
%struct.ppl_conf = type { i32, %struct.ppl_log* }
%struct.ppl_log = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppl_quiesce(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppl_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppl_log*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %9 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %8, i32 0, i32 1
  %10 = load %struct.ppl_conf*, %struct.ppl_conf** %9, align 8
  store %struct.ppl_conf* %10, %struct.ppl_conf** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %43, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ppl_conf*, %struct.ppl_conf** %5, align 8
  %17 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = load %struct.ppl_conf*, %struct.ppl_conf** %5, align 8
  %22 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %21, i32 0, i32 1
  %23 = load %struct.ppl_log*, %struct.ppl_log** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %23, i64 %25
  store %struct.ppl_log* %26, %struct.ppl_log** %7, align 8
  %27 = load %struct.ppl_log*, %struct.ppl_log** %7, align 8
  %28 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %34 = load %struct.ppl_log*, %struct.ppl_log** %7, align 8
  %35 = call i32 @ppl_no_io_unit_submitted(%struct.r5conf* %33, %struct.ppl_log* %34)
  %36 = load %struct.ppl_log*, %struct.ppl_log** %7, align 8
  %37 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wait_event_lock_irq(i32 %32, i32 %35, i32 %38)
  %40 = load %struct.ppl_log*, %struct.ppl_log** %7, align 8
  %41 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %14

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @ppl_no_io_unit_submitted(%struct.r5conf*, %struct.ppl_log*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
