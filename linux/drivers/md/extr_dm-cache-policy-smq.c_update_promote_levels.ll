; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_update_promote_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_update_promote_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32, i32, i32 }

@NR_HOTSPOT_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @update_promote_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_promote_levels(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  %3 = alloca i32, align 4
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  %4 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %4, i32 0, i32 3
  %6 = call i64 @allocator_empty(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %10 = call i32 @default_promote_level(%struct.smq_policy* %9)
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %13 = udiv i32 %12, 2
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %18 = call i32 @max(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %20 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %19, i32 0, i32 2
  %21 = call i32 @stats_assess(i32* %20)
  switch i32 %21, label %29 [
    i32 129, label %22
    i32 130, label %25
    i32 128, label %28
  ]

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = udiv i32 %23, 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = udiv i32 %26, 2
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %14, %28, %25, %22
  %30 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub i32 %30, %31
  %33 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %34 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @NR_HOTSPOT_LEVELS, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sub i32 %35, %36
  %38 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %39 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i64 @allocator_empty(i32*) #1

declare dso_local i32 @default_promote_level(%struct.smq_policy*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @stats_assess(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
