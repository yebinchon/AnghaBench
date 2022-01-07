; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c___r5l_stripe_write_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c___r5l_stripe_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_io_unit = type { %struct.r5l_log* }
%struct.r5l_log = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.r5conf* }
%struct.r5conf = type { i32 }

@IO_UNIT_STRIPE_END = common dso_local global i32 0, align 4
@R5C_LOG_TIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_io_unit*)* @__r5l_stripe_write_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__r5l_stripe_write_finished(%struct.r5l_io_unit* %0) #0 {
  %2 = alloca %struct.r5l_io_unit*, align 8
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i64, align 8
  store %struct.r5l_io_unit* %0, %struct.r5l_io_unit** %2, align 8
  %6 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %2, align 8
  %7 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %6, i32 0, i32 0
  %8 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  store %struct.r5l_log* %8, %struct.r5l_log** %3, align 8
  %9 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %10 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.r5conf*, %struct.r5conf** %14, align 8
  store %struct.r5conf* %15, %struct.r5conf** %4, align 8
  %16 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %17 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %16, i32 0, i32 2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %2, align 8
  %21 = load i32, i32* @IO_UNIT_STRIPE_END, align 4
  %22 = call i32 @__r5l_set_io_unit_state(%struct.r5l_io_unit* %20, i32 %21)
  %23 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %24 = call i32 @r5l_complete_finished_ios(%struct.r5l_log* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %28 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %27, i32 0, i32 2
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %33 = call i64 @r5l_reclaimable_space(%struct.r5l_log* %32)
  %34 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %35 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @R5C_LOG_TIGHT, align 4
  %40 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %41 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %31
  %45 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %46 = call i32 @r5l_wake_reclaim(%struct.r5l_log* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %49 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %48, i32 0, i32 2
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %53 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %52, i32 0, i32 1
  %54 = call i32 @wake_up(i32* %53)
  br label %55

55:                                               ; preds = %47, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__r5l_set_io_unit_state(%struct.r5l_io_unit*, i32) #1

declare dso_local i32 @r5l_complete_finished_ios(%struct.r5l_log*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @r5l_reclaimable_space(%struct.r5l_log*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5l_wake_reclaim(%struct.r5l_log*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
