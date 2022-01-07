; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___complete_background_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___complete_background_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32, i32 }
%struct.policy_work = type { i32, i32, i32 }
%struct.entry = type { i32, i32 }

@NR_CACHE_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, %struct.policy_work*, i32)* @__complete_background_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__complete_background_work(%struct.smq_policy* %0, %struct.policy_work* %1, i32 %2) #0 {
  %4 = alloca %struct.smq_policy*, align 8
  %5 = alloca %struct.policy_work*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %4, align 8
  store %struct.policy_work* %1, %struct.policy_work** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %9 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %8, i32 0, i32 1
  %10 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %11 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @from_cblock(i32 %12)
  %14 = call %struct.entry* @get_entry(i32* %9, i32 %13)
  store %struct.entry* %14, %struct.entry** %7, align 8
  %15 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %16 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %70 [
    i32 129, label %18
    i32 130, label %43
    i32 128, label %63
  ]

18:                                               ; preds = %3
  %19 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %20 = load %struct.entry*, %struct.entry** %7, align 8
  %21 = call i32 @clear_pending(%struct.smq_policy* %19, %struct.entry* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %26 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.entry*, %struct.entry** %7, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @NR_CACHE_LEVELS, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.entry*, %struct.entry** %7, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %35 = load %struct.entry*, %struct.entry** %7, align 8
  %36 = call i32 @push(%struct.smq_policy* %34, %struct.entry* %35)
  br label %42

37:                                               ; preds = %18
  %38 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %39 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %38, i32 0, i32 1
  %40 = load %struct.entry*, %struct.entry** %7, align 8
  %41 = call i32 @free_entry(i32* %39, %struct.entry* %40)
  br label %42

42:                                               ; preds = %37, %24
  br label %70

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %48 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %47, i32 0, i32 2
  %49 = load %struct.entry*, %struct.entry** %7, align 8
  %50 = call i32 @h_remove(i32* %48, %struct.entry* %49)
  %51 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %52 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %51, i32 0, i32 1
  %53 = load %struct.entry*, %struct.entry** %7, align 8
  %54 = call i32 @free_entry(i32* %52, %struct.entry* %53)
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %57 = load %struct.entry*, %struct.entry** %7, align 8
  %58 = call i32 @clear_pending(%struct.smq_policy* %56, %struct.entry* %57)
  %59 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %60 = load %struct.entry*, %struct.entry** %7, align 8
  %61 = call i32 @push_queue(%struct.smq_policy* %59, %struct.entry* %60)
  br label %62

62:                                               ; preds = %55, %46
  br label %70

63:                                               ; preds = %3
  %64 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %65 = load %struct.entry*, %struct.entry** %7, align 8
  %66 = call i32 @clear_pending(%struct.smq_policy* %64, %struct.entry* %65)
  %67 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %68 = load %struct.entry*, %struct.entry** %7, align 8
  %69 = call i32 @push_queue(%struct.smq_policy* %67, %struct.entry* %68)
  br label %70

70:                                               ; preds = %3, %63, %62, %42
  %71 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %72 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %75 = call i32 @btracker_complete(i32 %73, %struct.policy_work* %74)
  ret void
}

declare dso_local %struct.entry* @get_entry(i32*, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @clear_pending(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @push(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @free_entry(i32*, %struct.entry*) #1

declare dso_local i32 @h_remove(i32*, %struct.entry*) #1

declare dso_local i32 @push_queue(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @btracker_complete(i32, %struct.policy_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
