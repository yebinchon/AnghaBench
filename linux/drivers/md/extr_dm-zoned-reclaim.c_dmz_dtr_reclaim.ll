; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_dtr_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_dtr_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmz_dtr_reclaim(%struct.dmz_reclaim* %0) #0 {
  %2 = alloca %struct.dmz_reclaim*, align 8
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %2, align 8
  %3 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %2, align 8
  %4 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %3, i32 0, i32 2
  %5 = call i32 @cancel_delayed_work_sync(i32* %4)
  %6 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %2, align 8
  %7 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @destroy_workqueue(i32 %8)
  %10 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %2, align 8
  %11 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dm_kcopyd_client_destroy(i32 %12)
  %14 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %2, align 8
  %15 = call i32 @kfree(%struct.dmz_reclaim* %14)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dm_kcopyd_client_destroy(i32) #1

declare dso_local i32 @kfree(%struct.dmz_reclaim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
