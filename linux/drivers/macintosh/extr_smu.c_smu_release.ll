; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c_smu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.smu_private* }
%struct.smu_private = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@smu_file_closing = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@smu_clist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @smu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.smu_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.smu_private*, %struct.smu_private** %10, align 8
  store %struct.smu_private* %11, %struct.smu_private** %6, align 8
  %12 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %13 = icmp eq %struct.smu_private* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  store %struct.smu_private* null, %struct.smu_private** %17, align 8
  %18 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %19 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %18, i32 0, i32 2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @smu_file_closing, align 4
  %23 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %24 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %26 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %15
  %31 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %32 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  %37 = load i32, i32* @wait, align 4
  %38 = load i32, i32* @current, align 4
  %39 = call i32 @DECLARE_WAITQUEUE(i32 %37, i32 %38)
  %40 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %41 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %40, i32 0, i32 3
  %42 = call i32 @add_wait_queue(i32* %41, i32* @wait)
  br label %43

43:                                               ; preds = %52, %36
  %44 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %45 = call i32 @set_current_state(i32 %44)
  %46 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %47 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %54 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %53, i32 0, i32 2
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = call i32 (...) @schedule()
  %58 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %59 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %58, i32 0, i32 2
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  br label %43

62:                                               ; preds = %51
  %63 = load i32, i32* @TASK_RUNNING, align 4
  %64 = call i32 @set_current_state(i32 %63)
  %65 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %66 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %65, i32 0, i32 3
  %67 = call i32 @remove_wait_queue(i32* %66, i32* @wait)
  br label %68

68:                                               ; preds = %62, %30, %15
  %69 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %70 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %69, i32 0, i32 2
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_lock_irqsave(i32* @smu_clist_lock, i64 %73)
  %75 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %76 = getelementptr inbounds %struct.smu_private, %struct.smu_private* %75, i32 0, i32 1
  %77 = call i32 @list_del(i32* %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* @smu_clist_lock, i64 %78)
  %80 = load %struct.smu_private*, %struct.smu_private** %6, align 8
  %81 = call i32 @kfree(%struct.smu_private* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %68, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.smu_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
