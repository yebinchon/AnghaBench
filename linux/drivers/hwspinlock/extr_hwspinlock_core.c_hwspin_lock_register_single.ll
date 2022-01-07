; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_register_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_register_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32 }

@hwspinlock_tree_lock = common dso_local global i32 0, align 4
@hwspinlock_tree = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"hwspinlock id %d already exists!\0A\00", align 1
@HWSPINLOCK_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwspinlock*, i32)* @hwspin_lock_register_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwspin_lock_register_single(%struct.hwspinlock* %0, i32 %1) #0 {
  %3 = alloca %struct.hwspinlock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwspinlock*, align 8
  %6 = alloca i32, align 4
  store %struct.hwspinlock* %0, %struct.hwspinlock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @mutex_lock(i32* @hwspinlock_tree_lock)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %10 = call i32 @radix_tree_insert(i32* @hwspinlock_tree, i32 %8, %struct.hwspinlock* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HWSPINLOCK_UNUSED, align 4
  %25 = call %struct.hwspinlock* @radix_tree_tag_set(i32* @hwspinlock_tree, i32 %23, i32 %24)
  store %struct.hwspinlock* %25, %struct.hwspinlock** %5, align 8
  %26 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %27 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %28 = icmp ne %struct.hwspinlock* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  br label %31

31:                                               ; preds = %22, %21
  %32 = call i32 @mutex_unlock(i32* @hwspinlock_tree_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.hwspinlock*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.hwspinlock* @radix_tree_tag_set(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
