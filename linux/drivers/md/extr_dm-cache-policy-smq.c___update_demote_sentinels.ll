; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___update_demote_sentinels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___update_demote_sentinels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { %struct.queue }
%struct.queue = type { i32 }
%struct.entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @__update_demote_sentinels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_demote_sentinels(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue*, align 8
  %5 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  %6 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %7 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %6, i32 0, i32 0
  store %struct.queue* %7, %struct.queue** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.queue*, %struct.queue** %4, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.entry* @demote_sentinel(%struct.smq_policy* %15, i32 %16)
  store %struct.entry* %17, %struct.entry** %5, align 8
  %18 = load %struct.queue*, %struct.queue** %4, align 8
  %19 = load %struct.entry*, %struct.entry** %5, align 8
  %20 = call i32 @q_del(%struct.queue* %18, %struct.entry* %19)
  %21 = load %struct.queue*, %struct.queue** %4, align 8
  %22 = load %struct.entry*, %struct.entry** %5, align 8
  %23 = call i32 @q_push(%struct.queue* %21, %struct.entry* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  ret void
}

declare dso_local %struct.entry* @demote_sentinel(%struct.smq_policy*, i32) #1

declare dso_local i32 @q_del(%struct.queue*, %struct.entry*) #1

declare dso_local i32 @q_push(%struct.queue*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
