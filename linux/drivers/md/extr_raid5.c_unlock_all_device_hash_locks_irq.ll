; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_unlock_all_device_hash_locks_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_unlock_all_device_hash_locks_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32*, i32 }

@NR_STRIPE_HASH_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*)* @unlock_all_device_hash_locks_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_all_device_hash_locks_irq(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %4 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %5 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %4, i32 0, i32 1
  %6 = call i32 @spin_unlock(i32* %5)
  %7 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @spin_unlock(i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @spin_unlock_irq(i32* %26)
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
