; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___sentinels_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___sentinels_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32 }
%struct.entry = type { i32 }

@NR_CACHE_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @__sentinels_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sentinels_init(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NR_CACHE_LEVELS, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.entry* @writeback_sentinel(%struct.smq_policy* %10, i32 %11)
  store %struct.entry* %12, %struct.entry** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.entry*, %struct.entry** %4, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %17 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %16, i32 0, i32 1
  %18 = load %struct.entry*, %struct.entry** %4, align 8
  %19 = call i32 @q_push(i32* %17, %struct.entry* %18)
  %20 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.entry* @demote_sentinel(%struct.smq_policy* %20, i32 %21)
  store %struct.entry* %22, %struct.entry** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.entry*, %struct.entry** %4, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %27 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %26, i32 0, i32 0
  %28 = load %struct.entry*, %struct.entry** %4, align 8
  %29 = call i32 @q_push(i32* %27, %struct.entry* %28)
  br label %30

30:                                               ; preds = %9
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local %struct.entry* @writeback_sentinel(%struct.smq_policy*, i32) #1

declare dso_local i32 @q_push(i32*, %struct.entry*) #1

declare dso_local %struct.entry* @demote_sentinel(%struct.smq_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
