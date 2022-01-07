; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_queue_promotion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_queue_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { i32, i32, i32 }
%struct.policy_work = type { i32, i32, i32 }
%struct.entry = type { i32 }

@POLICY_PROMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, i32, %struct.policy_work**)* @queue_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_promotion(%struct.smq_policy* %0, i32 %1, %struct.policy_work** %2) #0 {
  %4 = alloca %struct.smq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.policy_work**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.entry*, align 8
  %9 = alloca %struct.policy_work, align 4
  store %struct.smq_policy* %0, %struct.smq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.policy_work** %2, %struct.policy_work*** %6, align 8
  %10 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %67

15:                                               ; preds = %3
  %16 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %17 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %16, i32 0, i32 0
  %18 = call i64 @allocator_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %22 = call i32 @free_target_met(%struct.smq_policy* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %26 = call i32 @queue_demotion(%struct.smq_policy* %25)
  br label %27

27:                                               ; preds = %24, %20
  br label %67

28:                                               ; preds = %15
  %29 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %30 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @btracker_promotion_already_present(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %67

36:                                               ; preds = %28
  %37 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %38 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %37, i32 0, i32 0
  %39 = call %struct.entry* @alloc_entry(i32* %38)
  store %struct.entry* %39, %struct.entry** %8, align 8
  %40 = load %struct.entry*, %struct.entry** %8, align 8
  %41 = icmp ne %struct.entry* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.entry*, %struct.entry** %8, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @POLICY_PROMOTE, align 4
  %48 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %52 = load %struct.entry*, %struct.entry** %8, align 8
  %53 = call i32 @infer_cblock(%struct.smq_policy* %51, %struct.entry* %52)
  %54 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %9, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %56 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.policy_work**, %struct.policy_work*** %6, align 8
  %59 = call i32 @btracker_queue(i32 %57, %struct.policy_work* %9, %struct.policy_work** %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %36
  %63 = load %struct.smq_policy*, %struct.smq_policy** %4, align 8
  %64 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %63, i32 0, i32 0
  %65 = load %struct.entry*, %struct.entry** %8, align 8
  %66 = call i32 @free_entry(i32* %64, %struct.entry* %65)
  br label %67

67:                                               ; preds = %14, %27, %35, %62, %36
  ret void
}

declare dso_local i64 @allocator_empty(i32*) #1

declare dso_local i32 @free_target_met(%struct.smq_policy*) #1

declare dso_local i32 @queue_demotion(%struct.smq_policy*) #1

declare dso_local i64 @btracker_promotion_already_present(i32, i32) #1

declare dso_local %struct.entry* @alloc_entry(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @infer_cblock(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @btracker_queue(i32, %struct.policy_work*, %struct.policy_work**) #1

declare dso_local i32 @free_entry(i32*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
