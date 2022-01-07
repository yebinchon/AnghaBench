; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i64, i32, i32 }
%struct.entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue*, %struct.entry*)* @q_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_push(%struct.queue* %0, %struct.entry* %1) #0 {
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  %5 = load %struct.entry*, %struct.entry** %4, align 8
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.entry*, %struct.entry** %4, align 8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.queue*, %struct.queue** %3, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.queue*, %struct.queue** %3, align 8
  %20 = getelementptr inbounds %struct.queue, %struct.queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.queue*, %struct.queue** %3, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.entry*, %struct.entry** %4, align 8
  %26 = getelementptr inbounds %struct.entry, %struct.entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.entry*, %struct.entry** %4, align 8
  %30 = call i32 @l_add_tail(i32 %21, i64 %28, %struct.entry* %29)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @l_add_tail(i32, i64, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
