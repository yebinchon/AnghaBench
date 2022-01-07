; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c___lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32 }
%struct.policy_work = type { i32 }
%struct.entry = type { i32 }

@PROMOTE_NOT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smq_policy*, i32, i32*, i32, i32, %struct.policy_work**, i32*)* @__lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lookup(%struct.smq_policy* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.policy_work** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.smq_policy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.policy_work**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.entry*, align 8
  %17 = alloca %struct.entry*, align 8
  %18 = alloca i32, align 4
  store %struct.smq_policy* %0, %struct.smq_policy** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.policy_work** %5, %struct.policy_work*** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %15, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %21 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %20, i32 0, i32 1
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.entry* @h_lookup(i32* %21, i32 %22)
  store %struct.entry* %23, %struct.entry** %16, align 8
  %24 = load %struct.entry*, %struct.entry** %16, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %7
  %27 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %28 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %27, i32 0, i32 0
  %29 = load %struct.entry*, %struct.entry** %16, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @stats_level_accessed(i32* %28, i32 %31)
  %33 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %34 = load %struct.entry*, %struct.entry** %16, align 8
  %35 = call i32 @requeue(%struct.smq_policy* %33, %struct.entry* %34)
  %36 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %37 = load %struct.entry*, %struct.entry** %16, align 8
  %38 = call i32 @infer_cblock(%struct.smq_policy* %36, %struct.entry* %37)
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %8, align 4
  br label %64

40:                                               ; preds = %7
  %41 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %42 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %41, i32 0, i32 0
  %43 = call i32 @stats_miss(i32* %42)
  %44 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.entry* @update_hotspot_queue(%struct.smq_policy* %44, i32 %45)
  store %struct.entry* %46, %struct.entry** %17, align 8
  %47 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %48 = load %struct.entry*, %struct.entry** %17, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @should_promote(%struct.smq_policy* %47, %struct.entry* %48, i32 %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @PROMOTE_NOT, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.policy_work**, %struct.policy_work*** %14, align 8
  %59 = call i32 @queue_promotion(%struct.smq_policy* %56, i32 %57, %struct.policy_work** %58)
  %60 = load i32*, i32** %15, align 8
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %40
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %26
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.entry* @h_lookup(i32*, i32) #1

declare dso_local i32 @stats_level_accessed(i32*, i32) #1

declare dso_local i32 @requeue(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @infer_cblock(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @stats_miss(i32*) #1

declare dso_local %struct.entry* @update_hotspot_queue(%struct.smq_policy*, i32) #1

declare dso_local i32 @should_promote(%struct.smq_policy*, %struct.entry*, i32, i32) #1

declare dso_local i32 @queue_promotion(%struct.smq_policy*, i32, %struct.policy_work**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
