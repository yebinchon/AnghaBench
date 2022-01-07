; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_queue_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_queue_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_policy = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.policy_work = type { i32, i32, i32 }
%struct.entry = type { i32 }

@POLICY_WRITEBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smq_policy*, i32)* @queue_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_writeback(%struct.smq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.smq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.policy_work, align 4
  %7 = alloca %struct.entry*, align 8
  store %struct.smq_policy* %0, %struct.smq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %9 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %8, i32 0, i32 0
  %10 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %11 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.entry* @q_peek(%struct.TYPE_4__* %9, i32 %13, i32 %14)
  store %struct.entry* %15, %struct.entry** %7, align 8
  %16 = load %struct.entry*, %struct.entry** %7, align 8
  %17 = icmp ne %struct.entry* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %2
  %19 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %20 = load %struct.entry*, %struct.entry** %7, align 8
  %21 = call i32 @mark_pending(%struct.smq_policy* %19, %struct.entry* %20)
  %22 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %23 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %22, i32 0, i32 0
  %24 = load %struct.entry*, %struct.entry** %7, align 8
  %25 = call i32 @q_del(%struct.TYPE_4__* %23, %struct.entry* %24)
  %26 = load i32, i32* @POLICY_WRITEBACK, align 4
  %27 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.entry*, %struct.entry** %7, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %33 = load %struct.entry*, %struct.entry** %7, align 8
  %34 = call i32 @infer_cblock(%struct.smq_policy* %32, %struct.entry* %33)
  %35 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %37 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @btracker_queue(i32 %38, %struct.policy_work* %6, i32* null)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %18
  %43 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %44 = load %struct.entry*, %struct.entry** %7, align 8
  %45 = call i32 @clear_pending(%struct.smq_policy* %43, %struct.entry* %44)
  %46 = load %struct.smq_policy*, %struct.smq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %46, i32 0, i32 0
  %48 = load %struct.entry*, %struct.entry** %7, align 8
  %49 = call i32 @q_push_front(%struct.TYPE_4__* %47, %struct.entry* %48)
  br label %50

50:                                               ; preds = %42, %18
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

declare dso_local %struct.entry* @q_peek(%struct.TYPE_4__*, i32, i32) #1

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
