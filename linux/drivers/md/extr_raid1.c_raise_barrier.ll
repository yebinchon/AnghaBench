; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raise_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raise_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@RESYNC_DEPTH = common dso_local global i64 0, align 8
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r1conf*, i32)* @raise_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raise_barrier(%struct.r1conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r1conf* %0, %struct.r1conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @sector_to_idx(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %10 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %13 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %16 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %26 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wait_event_lock_irq(i32 %14, i32 %24, i32 %27)
  %29 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %30 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = call i32 (...) @smp_mb__after_atomic()
  %37 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %38 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %41 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %2
  %45 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %46 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i64 @atomic_read(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %44
  %54 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %55 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i64 @atomic_read(i32* %59)
  %61 = load i64, i64* @RESYNC_DEPTH, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %53, %44, %2
  %64 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %65 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %66 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %64, i32* %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %63, %53
  %72 = phi i1 [ true, %53 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  %74 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %75 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @wait_event_lock_irq(i32 %39, i32 %73, i32 %76)
  %78 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %79 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %80 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i64 @test_bit(i32 %78, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %71
  %86 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %87 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @atomic_dec(i32* %91)
  %93 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %94 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %97 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %96, i32 0, i32 2
  %98 = call i32 @wake_up(i32* %97)
  %99 = load i32, i32* @EINTR, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %108

101:                                              ; preds = %71
  %102 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %103 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %102, i32 0, i32 1
  %104 = call i32 @atomic_inc(i32* %103)
  %105 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %106 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_irq(i32* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %85
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @sector_to_idx(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
