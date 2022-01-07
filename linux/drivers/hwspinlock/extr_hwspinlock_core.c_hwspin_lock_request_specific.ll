; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_request_specific.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_request_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32 }

@hwspinlock_tree_lock = common dso_local global i32 0, align 4
@hwspinlock_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"hwspinlock %u does not exist\0A\00", align 1
@HWSPINLOCK_UNUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"hwspinlock %u is already in use\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hwspinlock* @hwspin_lock_request_specific(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwspinlock*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @mutex_lock(i32* @hwspinlock_tree_lock)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.hwspinlock* @radix_tree_lookup(i32* @hwspinlock_tree, i32 %6)
  store %struct.hwspinlock* %7, %struct.hwspinlock** %3, align 8
  %8 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %9 = icmp ne %struct.hwspinlock* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %15 = call i32 @hwlock_to_id(%struct.hwspinlock* %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @HWSPINLOCK_UNUSED, align 4
  %22 = call i32 @radix_tree_tag_get(i32* @hwspinlock_tree, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store %struct.hwspinlock* null, %struct.hwspinlock** %3, align 8
  br label %35

28:                                               ; preds = %13
  %29 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %30 = call i32 @__hwspin_lock_request(%struct.hwspinlock* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.hwspinlock* null, %struct.hwspinlock** %3, align 8
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %25, %10
  %36 = call i32 @mutex_unlock(i32* @hwspinlock_tree_lock)
  %37 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  ret %struct.hwspinlock* %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hwspinlock* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hwlock_to_id(%struct.hwspinlock*) #1

declare dso_local i32 @radix_tree_tag_get(i32*, i32, i32) #1

declare dso_local i32 @__hwspin_lock_request(%struct.hwspinlock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
