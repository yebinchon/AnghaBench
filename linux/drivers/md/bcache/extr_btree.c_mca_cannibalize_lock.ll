; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_cannibalize_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_cannibalize_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cache_set = type { i32, i32 }
%struct.btree_op = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*, %struct.btree_op*)* @mca_cannibalize_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_cannibalize_lock(%struct.cache_set* %0, %struct.btree_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.btree_op*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.btree_op* %1, %struct.btree_op** %5, align 8
  %7 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %8 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %7, i32 0, i32 1
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %10 = call %struct.task_struct* @cmpxchg(i32* %8, i32* null, %struct.task_struct* %9)
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %16 = icmp ne %struct.task_struct* %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.btree_op*, %struct.btree_op** %5, align 8
  %19 = icmp ne %struct.btree_op* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %22 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %21, i32 0, i32 0
  %23 = load %struct.btree_op*, %struct.btree_op** %5, align 8
  %24 = getelementptr inbounds %struct.btree_op, %struct.btree_op* %23, i32 0, i32 0
  %25 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %26 = call i32 @prepare_to_wait(i32* %22, i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* @EINTR, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.task_struct* @cmpxchg(i32*, i32*, %struct.task_struct*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
