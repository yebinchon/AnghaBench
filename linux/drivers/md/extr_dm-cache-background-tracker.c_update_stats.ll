; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_tracker = type { i32, i32, i32 }
%struct.policy_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.background_tracker*, %struct.policy_work*, i32)* @update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_stats(%struct.background_tracker* %0, %struct.policy_work* %1, i32 %2) #0 {
  %4 = alloca %struct.background_tracker*, align 8
  %5 = alloca %struct.policy_work*, align 8
  %6 = alloca i32, align 4
  store %struct.background_tracker* %0, %struct.background_tracker** %4, align 8
  store %struct.policy_work* %1, %struct.policy_work** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %8 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %25 [
    i32 129, label %10
    i32 130, label %15
    i32 128, label %20
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %13 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %12, i32 0, i32 2
  %14 = call i32 @atomic_add(i32 %11, i32* %13)
  br label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %18 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %17, i32 0, i32 1
  %19 = call i32 @atomic_add(i32 %16, i32* %18)
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %23 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %22, i32 0, i32 0
  %24 = call i32 @atomic_add(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %3, %20, %15, %10
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
