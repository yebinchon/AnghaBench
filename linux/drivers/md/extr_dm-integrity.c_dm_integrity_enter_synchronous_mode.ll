; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_enter_synchronous_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_enter_synchronous_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i8, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"dm_integrity_enter_synchronous_mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*)* @dm_integrity_enter_synchronous_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_integrity_enter_synchronous_mode(%struct.dm_integrity_c* %0) #0 {
  %2 = alloca %struct.dm_integrity_c*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %2, align 8
  %3 = call i32 @DEBUG_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %5 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 8
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = call i64 @msecs_to_jiffies(i32 10)
  %11 = add nsw i64 %10, 1
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %13 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %12, i32 0, i32 4
  store i64 %11, i64* %13, align 8
  %14 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %15 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %17 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %16, i32 0, i32 3
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %20 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %23 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %22, i32 0, i32 3
  %24 = call i32 @queue_delayed_work(i32 %21, i32* %23, i32 0)
  %25 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %26 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @flush_workqueue(i32 %27)
  br label %29

29:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @DEBUG_print(i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
