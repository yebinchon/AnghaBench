; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raise_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raise_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, i32, i32, i32, i32 }

@RESYNC_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, i32)* @raise_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raise_barrier(%struct.r10conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %9 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %21 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %13
  %26 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %27 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %13
  %32 = phi i1 [ true, %13 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %35 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wait_event_lock_irq(i32 %22, i32 %33, i32 %36)
  %38 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %39 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %43 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %46 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %45, i32 0, i32 2
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %31
  %50 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %51 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RESYNC_DEPTH, align 8
  %54 = icmp slt i64 %52, %53
  br label %55

55:                                               ; preds = %49, %31
  %56 = phi i1 [ false, %31 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %59 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wait_event_lock_irq(i32 %44, i32 %57, i32 %60)
  %62 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %63 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_irq(i32* %63)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
