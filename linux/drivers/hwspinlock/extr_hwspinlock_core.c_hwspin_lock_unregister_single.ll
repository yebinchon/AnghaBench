; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_unregister_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_unregister_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32 }

@hwspinlock_tree_lock = common dso_local global i32 0, align 4
@hwspinlock_tree = common dso_local global i32 0, align 4
@HWSPINLOCK_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"hwspinlock %d still in use (or not present)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to delete hwspinlock %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hwspinlock* (i32)* @hwspin_lock_unregister_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hwspinlock* @hwspin_lock_unregister_single(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwspinlock*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.hwspinlock* null, %struct.hwspinlock** %3, align 8
  %5 = call i32 @mutex_lock(i32* @hwspinlock_tree_lock)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @HWSPINLOCK_UNUSED, align 4
  %8 = call i32 @radix_tree_tag_get(i32* @hwspinlock_tree, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.hwspinlock* @radix_tree_delete(i32* @hwspinlock_tree, i32 %15)
  store %struct.hwspinlock* %16, %struct.hwspinlock** %3, align 8
  %17 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %18 = icmp ne %struct.hwspinlock* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %23

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %19, %11
  %24 = call i32 @mutex_unlock(i32* @hwspinlock_tree_lock)
  %25 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  ret %struct.hwspinlock* %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_tag_get(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.hwspinlock* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
