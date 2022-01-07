; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_core.c_wf_unregister_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_core.c_wf_unregister_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@wf_lock = common dso_local global i32 0, align 4
@wf_client_list = common dso_local global i32 0, align 4
@wf_client_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wf_unregister_client(%struct.notifier_block* %0) #0 {
  %2 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %2, align 8
  %3 = call i32 @mutex_lock(i32* @wf_lock)
  %4 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %5 = call i32 @blocking_notifier_chain_unregister(i32* @wf_client_list, %struct.notifier_block* %4)
  %6 = load i64, i64* @wf_client_count, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* @wf_client_count, align 8
  %8 = load i64, i64* @wf_client_count, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @wf_stop_thread()
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i32 @mutex_unlock(i32* @wf_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

declare dso_local i32 @wf_stop_thread(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
