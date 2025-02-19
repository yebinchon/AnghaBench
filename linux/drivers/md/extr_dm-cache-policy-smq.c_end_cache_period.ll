; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_end_cache_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_end_cache_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i64, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CACHE_UPDATE_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @end_cache_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_cache_period(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @time_after(i64 %3, i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @from_cblock(i32 %15)
  %17 = call i32 @clear_bitset(i32 %12, i32 %16)
  %18 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %19 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %18, i32 0, i32 3
  %20 = call i32 @q_redistribute(i32* %19)
  %21 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %22 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %21, i32 0, i32 2
  %23 = call i32 @q_redistribute(i32* %22)
  %24 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %25 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %24, i32 0, i32 1
  %26 = call i32 @stats_reset(i32* %25)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @CACHE_UPDATE_PERIOD, align 8
  %29 = add nsw i64 %27, %28
  %30 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %31 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %9, %1
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @clear_bitset(i32, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @q_redistribute(i32*) #1

declare dso_local i32 @stats_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
