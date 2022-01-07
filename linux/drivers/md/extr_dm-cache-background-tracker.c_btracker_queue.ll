; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_btracker_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_btracker_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_tracker = type { i32, i32, i32 }
%struct.policy_work = type { i32 }
%struct.bt_work = type { %struct.policy_work, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btracker_queue(%struct.background_tracker* %0, %struct.policy_work* %1, %struct.policy_work** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.background_tracker*, align 8
  %6 = alloca %struct.policy_work*, align 8
  %7 = alloca %struct.policy_work**, align 8
  %8 = alloca %struct.bt_work*, align 8
  store %struct.background_tracker* %0, %struct.background_tracker** %5, align 8
  store %struct.policy_work* %1, %struct.policy_work** %6, align 8
  store %struct.policy_work** %2, %struct.policy_work*** %7, align 8
  %9 = load %struct.policy_work**, %struct.policy_work*** %7, align 8
  %10 = icmp ne %struct.policy_work** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load %struct.policy_work**, %struct.policy_work*** %7, align 8
  store %struct.policy_work* null, %struct.policy_work** %12, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.background_tracker*, %struct.background_tracker** %5, align 8
  %15 = call %struct.bt_work* @alloc_work(%struct.background_tracker* %14)
  store %struct.bt_work* %15, %struct.bt_work** %8, align 8
  %16 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %17 = icmp ne %struct.bt_work* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %13
  %22 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %23 = getelementptr inbounds %struct.bt_work, %struct.bt_work* %22, i32 0, i32 0
  %24 = load %struct.policy_work*, %struct.policy_work** %6, align 8
  %25 = call i32 @memcpy(%struct.policy_work* %23, %struct.policy_work* %24, i32 4)
  %26 = load %struct.background_tracker*, %struct.background_tracker** %5, align 8
  %27 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %28 = call i32 @__insert_pending(%struct.background_tracker* %26, %struct.bt_work* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load %struct.background_tracker*, %struct.background_tracker** %5, align 8
  %32 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %35 = call i32 @kmem_cache_free(i32 %33, %struct.bt_work* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %21
  %39 = load %struct.policy_work**, %struct.policy_work*** %7, align 8
  %40 = icmp ne %struct.policy_work** %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %43 = getelementptr inbounds %struct.bt_work, %struct.bt_work* %42, i32 0, i32 0
  %44 = load %struct.policy_work**, %struct.policy_work*** %7, align 8
  store %struct.policy_work* %43, %struct.policy_work** %44, align 8
  %45 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %46 = getelementptr inbounds %struct.bt_work, %struct.bt_work* %45, i32 0, i32 1
  %47 = load %struct.background_tracker*, %struct.background_tracker** %5, align 8
  %48 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %47, i32 0, i32 1
  %49 = call i32 @list_add(i32* %46, i32* %48)
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %52 = getelementptr inbounds %struct.bt_work, %struct.bt_work* %51, i32 0, i32 1
  %53 = load %struct.background_tracker*, %struct.background_tracker** %5, align 8
  %54 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %52, i32* %54)
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.background_tracker*, %struct.background_tracker** %5, align 8
  %58 = load %struct.bt_work*, %struct.bt_work** %8, align 8
  %59 = getelementptr inbounds %struct.bt_work, %struct.bt_work* %58, i32 0, i32 0
  %60 = call i32 @update_stats(%struct.background_tracker* %57, %struct.policy_work* %59, i32 1)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %30, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.bt_work* @alloc_work(%struct.background_tracker*) #1

declare dso_local i32 @memcpy(%struct.policy_work*, %struct.policy_work*, i32) #1

declare dso_local i32 @__insert_pending(%struct.background_tracker*, %struct.bt_work*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.bt_work*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @update_stats(%struct.background_tracker*, %struct.policy_work*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
