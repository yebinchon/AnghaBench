; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_update_log_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_update_log_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.r5conf* }
%struct.r5conf = type { i32 }

@R5C_LOG_CRITICAL = common dso_local global i32 0, align 4
@R5C_LOG_TIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*)* @r5c_update_log_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5c_update_log_state(%struct.r5l_log* %0) #0 {
  %2 = alloca %struct.r5l_log*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %2, align 8
  %7 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %8 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %3, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %15 = call i32 @r5c_is_writeback(%struct.r5l_log* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %20 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %21 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %24 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @r5l_ring_distance(%struct.r5l_log* %19, i32 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %28 = call i32 @r5c_log_required_to_flush_cache(%struct.r5conf* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 2, %30
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load i32, i32* @R5C_LOG_CRITICAL, align 4
  %35 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  br label %50

38:                                               ; preds = %18
  %39 = load i32, i32* @R5C_LOG_CRITICAL, align 4
  %40 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %41 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* @R5C_LOG_CRITICAL, align 4
  %47 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %48 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 3, %52
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @R5C_LOG_TIGHT, align 4
  %57 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %58 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @R5C_LOG_TIGHT, align 4
  %62 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %63 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %62, i32 0, i32 0
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %70 = call i32 @r5l_wake_reclaim(%struct.r5l_log* %69, i32 0)
  br label %71

71:                                               ; preds = %17, %68, %65
  ret void
}

declare dso_local i32 @r5c_is_writeback(%struct.r5l_log*) #1

declare dso_local i32 @r5l_ring_distance(%struct.r5l_log*, i32, i32) #1

declare dso_local i32 @r5c_log_required_to_flush_cache(%struct.r5conf*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @r5l_wake_reclaim(%struct.r5l_log*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
