; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_push_before.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_push_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i64, i32, i32 }
%struct.entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue*, %struct.entry*, %struct.entry*)* @q_push_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_push_before(%struct.queue* %0, %struct.entry* %1, %struct.entry* %2) #0 {
  %4 = alloca %struct.queue*, align 8
  %5 = alloca %struct.entry*, align 8
  %6 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %4, align 8
  store %struct.entry* %1, %struct.entry** %5, align 8
  store %struct.entry* %2, %struct.entry** %6, align 8
  %7 = load %struct.entry*, %struct.entry** %6, align 8
  %8 = getelementptr inbounds %struct.entry, %struct.entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.entry*, %struct.entry** %6, align 8
  %12 = getelementptr inbounds %struct.entry, %struct.entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.queue*, %struct.queue** %4, align 8
  %17 = getelementptr inbounds %struct.queue, %struct.queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.queue*, %struct.queue** %4, align 8
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.queue*, %struct.queue** %4, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.entry*, %struct.entry** %6, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.entry*, %struct.entry** %5, align 8
  %32 = load %struct.entry*, %struct.entry** %6, align 8
  %33 = call i32 @l_add_before(i32 %23, i64 %30, %struct.entry* %31, %struct.entry* %32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @l_add_before(i32, i64, %struct.entry*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
