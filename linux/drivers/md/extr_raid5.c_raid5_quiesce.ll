; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, i32)* @raid5_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_quiesce(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 0
  %8 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  store %struct.r5conf* %8, %struct.r5conf** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %13 = call i32 @lock_all_device_hash_locks_irq(%struct.r5conf* %12)
  %14 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %15 = load i32, i32* @INT_MAX, align 4
  %16 = call i32 @r5c_flush_cache(%struct.r5conf* %14, i32 %15)
  %17 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %20 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 4
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 3
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  br label %31

31:                                               ; preds = %26, %11
  %32 = phi i1 [ false, %11 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %35 = call i32 @unlock_all_device_hash_locks_irq(%struct.r5conf* %34)
  %36 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %37 = call i32 @lock_all_device_hash_locks_irq(%struct.r5conf* %36)
  %38 = call i32 @wait_event_cmd(i32 %21, i32 %33, i32 %35, i32 %37)
  %39 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %42 = call i32 @unlock_all_device_hash_locks_irq(%struct.r5conf* %41)
  %43 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %44 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %43, i32 0, i32 1
  %45 = call i32 @wake_up(i32* %44)
  br label %59

46:                                               ; preds = %2
  %47 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %48 = call i32 @lock_all_device_hash_locks_irq(%struct.r5conf* %47)
  %49 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %52 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %51, i32 0, i32 2
  %53 = call i32 @wake_up(i32* %52)
  %54 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 1
  %56 = call i32 @wake_up(i32* %55)
  %57 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %58 = call i32 @unlock_all_device_hash_locks_irq(%struct.r5conf* %57)
  br label %59

59:                                               ; preds = %46, %31
  %60 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @log_quiesce(%struct.r5conf* %60, i32 %61)
  ret void
}

declare dso_local i32 @lock_all_device_hash_locks_irq(%struct.r5conf*) #1

declare dso_local i32 @r5c_flush_cache(%struct.r5conf*, i32) #1

declare dso_local i32 @wait_event_cmd(i32, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @unlock_all_device_hash_locks_irq(%struct.r5conf*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @log_quiesce(%struct.r5conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
