; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_check_stripe_cache_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_check_stripe_cache_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_check_stripe_cache_usage(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %4 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %5 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @r5c_is_writeback(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %12 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %11, i32 0, i32 4
  %13 = call i32 @atomic_read(i32* %12)
  %14 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %15 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %14, i32 0, i32 3
  %16 = call i32 @atomic_read(i32* %15)
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %20 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1
  %23 = sdiv i32 %22, 2
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %10
  %26 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %26, i32 0, i32 2
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %10
  %31 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %32 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @r5l_wake_reclaim(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %9, %30, %25
  ret void
}

declare dso_local i32 @r5c_is_writeback(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @r5l_wake_reclaim(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
