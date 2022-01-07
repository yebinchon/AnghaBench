; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32 }

@hwspinlock_tree_lock = common dso_local global i32 0, align 4
@hwspinlock_tree = common dso_local global i32 0, align 4
@HWSPINLOCK_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"a free hwspinlock is not available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hwspinlock* @hwspin_lock_request() #0 {
  %1 = alloca %struct.hwspinlock*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @mutex_lock(i32* @hwspinlock_tree_lock)
  %4 = bitcast %struct.hwspinlock** %1 to i8**
  %5 = load i32, i32* @HWSPINLOCK_UNUSED, align 4
  %6 = call i32 @radix_tree_gang_lookup_tag(i32* @hwspinlock_tree, i8** %4, i32 0, i32 1, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.hwspinlock* null, %struct.hwspinlock** %1, align 8
  br label %22

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.hwspinlock*, %struct.hwspinlock** %1, align 8
  %17 = call i32 @__hwspin_lock_request(%struct.hwspinlock* %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store %struct.hwspinlock* null, %struct.hwspinlock** %1, align 8
  br label %21

21:                                               ; preds = %20, %11
  br label %22

22:                                               ; preds = %21, %9
  %23 = call i32 @mutex_unlock(i32* @hwspinlock_tree_lock)
  %24 = load %struct.hwspinlock*, %struct.hwspinlock** %1, align 8
  ret %struct.hwspinlock* %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_gang_lookup_tag(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__hwspin_lock_request(%struct.hwspinlock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
