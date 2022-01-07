; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i64, i32 }
%struct.entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue*, %struct.entry*)* @q_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_del(%struct.queue* %0, %struct.entry* %1) #0 {
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.entry*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  store %struct.entry* %1, %struct.entry** %4, align 8
  %5 = load %struct.queue*, %struct.queue** %3, align 8
  %6 = getelementptr inbounds %struct.queue, %struct.queue* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.queue*, %struct.queue** %3, align 8
  %9 = getelementptr inbounds %struct.queue, %struct.queue* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.entry*, %struct.entry** %4, align 8
  %12 = getelementptr inbounds %struct.entry, %struct.entry* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.entry*, %struct.entry** %4, align 8
  %16 = call i32 @l_del(i32 %7, i64 %14, %struct.entry* %15)
  %17 = load %struct.entry*, %struct.entry** %4, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.queue*, %struct.queue** %3, align 8
  %23 = getelementptr inbounds %struct.queue, %struct.queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @l_del(i32, i64, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
