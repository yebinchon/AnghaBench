; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcache_kobj = common dso_local global i64 0, align 8
@bcache_wq = common dso_local global i64 0, align 8
@bch_journal_wq = common dso_local global i64 0, align 8
@bcache_major = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"bcache\00", align 1
@reboot = common dso_local global i32 0, align 4
@bch_register_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bcache_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcache_exit() #0 {
  %1 = call i32 (...) @bch_debug_exit()
  %2 = call i32 (...) @bch_request_exit()
  %3 = load i64, i64* @bcache_kobj, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @bcache_kobj, align 8
  %7 = call i32 @kobject_put(i64 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @bcache_wq, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* @bcache_wq, align 8
  %13 = call i32 @destroy_workqueue(i64 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, i64* @bch_journal_wq, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* @bch_journal_wq, align 8
  %19 = call i32 @destroy_workqueue(i64 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* @bcache_major, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* @bcache_major, align 8
  %25 = call i32 @unregister_blkdev(i64 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = call i32 @unregister_reboot_notifier(i32* @reboot)
  %28 = call i32 @mutex_destroy(i32* @bch_register_lock)
  ret void
}

declare dso_local i32 @bch_debug_exit(...) #1

declare dso_local i32 @bch_request_exit(...) #1

declare dso_local i32 @kobject_put(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @unregister_blkdev(i64, i8*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
