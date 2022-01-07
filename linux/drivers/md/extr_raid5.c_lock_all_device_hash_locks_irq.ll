; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_lock_all_device_hash_locks_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_lock_all_device_hash_locks_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32 }

@NR_STRIPE_HASH_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*)* @lock_all_device_hash_locks_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_all_device_hash_locks_irq(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %4 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %5 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @spin_lock_irq(i32 %6)
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %15, %16
  %18 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spin_lock_nest_lock(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_lock_nest_lock(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
