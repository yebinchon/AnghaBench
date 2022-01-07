; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }
%struct.queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.queue*)* @q_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @q_pop(%struct.queue* %0) #0 {
  %2 = alloca %struct.queue*, align 8
  %3 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %2, align 8
  %4 = load %struct.queue*, %struct.queue** %2, align 8
  %5 = load %struct.queue*, %struct.queue** %2, align 8
  %6 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.entry* @q_peek(%struct.queue* %4, i32 %7, i32 1)
  store %struct.entry* %8, %struct.entry** %3, align 8
  %9 = load %struct.entry*, %struct.entry** %3, align 8
  %10 = icmp ne %struct.entry* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.queue*, %struct.queue** %2, align 8
  %13 = load %struct.entry*, %struct.entry** %3, align 8
  %14 = call i32 @q_del(%struct.queue* %12, %struct.entry* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.entry*, %struct.entry** %3, align 8
  ret %struct.entry* %16
}

declare dso_local %struct.entry* @q_peek(%struct.queue*, i32, i32) #1

declare dso_local i32 @q_del(%struct.queue*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
