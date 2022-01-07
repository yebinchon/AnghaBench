; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_wait_read_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_wait_read_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, i32)* @wait_read_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_read_barrier(%struct.r1conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @sector_to_idx(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %9 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @atomic_inc(i32* %13)
  %15 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %16 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @READ_ONCE(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %23 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %26 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %33 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @atomic_dec(i32* %37)
  %39 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 4
  %41 = call i32 @wake_up(i32* %40)
  %42 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %43 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %46 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %52 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wait_event_lock_irq(i32 %44, i32 %50, i32 %53)
  %55 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %56 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %63 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @atomic_dec(i32* %67)
  %69 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %70 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  br label %72

72:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @sector_to_idx(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

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
