; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_update_level_jump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_update_level_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @update_level_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_level_jump(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  %3 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %4 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %3, i32 0, i32 1
  %5 = call i32 @stats_assess(i32* %4)
  switch i32 %5, label %15 [
    i32 129, label %6
    i32 130, label %9
    i32 128, label %12
  ]

6:                                                ; preds = %1
  %7 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %8 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %7, i32 0, i32 0
  store i32 4, i32* %8, align 4
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 0
  store i32 2, i32* %11, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %1, %12, %9, %6
  ret void
}

declare dso_local i32 @stats_assess(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
