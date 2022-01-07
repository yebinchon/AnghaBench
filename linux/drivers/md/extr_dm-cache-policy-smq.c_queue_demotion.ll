; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_queue_demotion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_queue_demotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.policy_work = type { i32, i32, i32 }
%struct.entry = type { i32 }

@POLICY_DEMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*)* @queue_demotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_demotion(%struct.smq_policy* %0) #0 {
  %2 = alloca %struct.smq_policy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.policy_work, align 4
  %5 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %2, align 8
  %6 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %7 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %17 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %16, i32 0, i32 0
  %18 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %19 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  %23 = call %struct.entry* @q_peek(%struct.TYPE_4__* %17, i32 %22, i32 1)
  store %struct.entry* %23, %struct.entry** %5, align 8
  %24 = load %struct.entry*, %struct.entry** %5, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %15
  %27 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %28 = call i32 @clean_target_met(%struct.smq_policy* %27, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %32 = call i32 @queue_writeback(%struct.smq_policy* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %26
  br label %66

34:                                               ; preds = %15
  %35 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %36 = load %struct.entry*, %struct.entry** %5, align 8
  %37 = call i32 @mark_pending(%struct.smq_policy* %35, %struct.entry* %36)
  %38 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %39 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %38, i32 0, i32 0
  %40 = load %struct.entry*, %struct.entry** %5, align 8
  %41 = call i32 @q_del(%struct.TYPE_4__* %39, %struct.entry* %40)
  %42 = load i32, i32* @POLICY_DEMOTE, align 4
  %43 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %4, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.entry*, %struct.entry** %5, align 8
  %45 = getelementptr inbounds %struct.entry, %struct.entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %4, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %49 = load %struct.entry*, %struct.entry** %5, align 8
  %50 = call i32 @infer_cblock(%struct.smq_policy* %48, %struct.entry* %49)
  %51 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %53 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @btracker_queue(i32 %54, %struct.policy_work* %4, i32* null)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %34
  %59 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %60 = load %struct.entry*, %struct.entry** %5, align 8
  %61 = call i32 @clear_pending(%struct.smq_policy* %59, %struct.entry* %60)
  %62 = load %struct.smq_policy*, %struct.smq_policy** %2, align 8
  %63 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %62, i32 0, i32 0
  %64 = load %struct.entry*, %struct.entry** %5, align 8
  %65 = call i32 @q_push_front(%struct.TYPE_4__* %63, %struct.entry* %64)
  br label %66

66:                                               ; preds = %14, %33, %58, %34
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.entry* @q_peek(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @clean_target_met(%struct.smq_policy*, i32) #1

declare dso_local i32 @queue_writeback(%struct.smq_policy*, i32) #1

declare dso_local i32 @mark_pending(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @q_del(%struct.TYPE_4__*, %struct.entry*) #1

declare dso_local i32 @infer_cblock(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @btracker_queue(i32, %struct.policy_work*, i32*) #1

declare dso_local i32 @clear_pending(%struct.smq_policy*, %struct.entry*) #1

declare dso_local i32 @q_push_front(%struct.TYPE_4__*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
