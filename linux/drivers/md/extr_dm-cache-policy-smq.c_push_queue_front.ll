; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_push_queue_front.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_push_queue_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32 }
%struct.entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, %struct.entry*)* @push_queue_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_queue_front(%struct.smq_policy* %0, %struct.entry* %1) #0 {
  %3 = alloca %struct.smq_policy*, align 8
  %4 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  %5 = load %struct.entry*, %struct.entry** %4, align 8
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 1
  %12 = load %struct.entry*, %struct.entry** %4, align 8
  %13 = call i32 @q_push_front(i32* %11, %struct.entry* %12)
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %16 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %15, i32 0, i32 0
  %17 = load %struct.entry*, %struct.entry** %4, align 8
  %18 = call i32 @q_push_front(i32* %16, %struct.entry* %17)
  br label %19

19:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @q_push_front(i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
