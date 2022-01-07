; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c__wait_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c__wait_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32*, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, i32)* @_wait_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wait_barrier(%struct.r1conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca i32, align 4
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %6 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = call i32 @atomic_inc(i32* %10)
  %12 = call i32 (...) @smp_mb__after_atomic()
  %13 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %14 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @READ_ONCE(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %20 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %90

28:                                               ; preds = %18, %2
  %29 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %30 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %33 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @atomic_dec(i32* %44)
  %46 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %47 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %46, i32 0, i32 5
  %48 = call i32 @wake_up(i32* %47)
  %49 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %50 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %53 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %28
  %57 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %58 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @atomic_read(i32* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %56, %28
  %67 = phi i1 [ false, %28 ], [ %65, %56 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %70 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @wait_event_lock_irq(i32 %51, i32 %68, i32 %71)
  %73 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %74 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %81 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @atomic_dec(i32* %85)
  %87 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %88 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_irq(i32* %88)
  br label %90

90:                                               ; preds = %66, %27
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
