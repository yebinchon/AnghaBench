; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_check_cached_full_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_check_cached_full_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32 }

@STRIPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_check_cached_full_stripe(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %3 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %4 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @r5c_is_writeback(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %11 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %10, i32 0, i32 2
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %14 = call i32 @R5C_FULL_STRIPE_FLUSH_BATCH(%struct.r5conf* %13)
  %15 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %16 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STRIPE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = call i64 @min(i32 %14, i32 %19)
  %21 = icmp sge i64 %12, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @r5l_wake_reclaim(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %8, %22, %9
  ret void
}

declare dso_local i32 @r5c_is_writeback(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @R5C_FULL_STRIPE_FLUSH_BATCH(%struct.r5conf*) #1

declare dso_local i32 @r5l_wake_reclaim(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
