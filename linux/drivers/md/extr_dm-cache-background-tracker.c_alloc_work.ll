; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_alloc_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_alloc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_work = type { i32 }
%struct.background_tracker = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt_work* (%struct.background_tracker*)* @alloc_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt_work* @alloc_work(%struct.background_tracker* %0) #0 {
  %2 = alloca %struct.bt_work*, align 8
  %3 = alloca %struct.background_tracker*, align 8
  store %struct.background_tracker* %0, %struct.background_tracker** %3, align 8
  %4 = load %struct.background_tracker*, %struct.background_tracker** %3, align 8
  %5 = call i64 @max_work_reached(%struct.background_tracker* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.bt_work* null, %struct.bt_work** %2, align 8
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.background_tracker*, %struct.background_tracker** %3, align 8
  %10 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_NOWAIT, align 4
  %13 = call %struct.bt_work* @kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.bt_work* %13, %struct.bt_work** %2, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.bt_work*, %struct.bt_work** %2, align 8
  ret %struct.bt_work* %15
}

declare dso_local i64 @max_work_reached(%struct.background_tracker*) #1

declare dso_local %struct.bt_work* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
