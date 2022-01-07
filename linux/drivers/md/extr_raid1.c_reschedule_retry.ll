; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_reschedule_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_reschedule_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32, %struct.mddev* }
%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @reschedule_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reschedule_retry(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %7 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %8 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %7, i32 0, i32 2
  %9 = load %struct.mddev*, %struct.mddev** %8, align 8
  store %struct.mddev* %9, %struct.mddev** %4, align 8
  %10 = load %struct.mddev*, %struct.mddev** %4, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 1
  %12 = load %struct.r1conf*, %struct.r1conf** %11, align 8
  store %struct.r1conf* %12, %struct.r1conf** %5, align 8
  %13 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %14 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sector_to_idx(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %18 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %22 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %21, i32 0, i32 0
  %23 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %24 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %23, i32 0, i32 3
  %25 = call i32 @list_add(i32* %22, i32* %24)
  %26 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %27 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %34 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %33, i32 0, i32 1
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %38 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %37, i32 0, i32 0
  %39 = call i32 @wake_up(i32* %38)
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @md_wakeup_thread(i32 %42)
  ret void
}

declare dso_local i32 @sector_to_idx(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
