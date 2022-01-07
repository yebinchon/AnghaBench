; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_freeze_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_freeze_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, i32)* @freeze_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeze_array(%struct.r10conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %6 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %9 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %13 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %17 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %21 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %24 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %23, i32 0, i32 3
  %25 = call i64 @atomic_read(i32* %24)
  %26 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %27 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = icmp eq i64 %25, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %35 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %38 = call i32 @flush_pending_writes(%struct.r10conf* %37)
  %39 = call i32 @wait_event_lock_irq_cmd(i32 %22, i32 %33, i32 %36, i32 %38)
  %40 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %41 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %45 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_irq(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq_cmd(i32, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_pending_writes(%struct.r10conf*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
