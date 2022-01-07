; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32 }
%struct.dm_table = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMF_SUSPENDED_INTERNALLY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DMF_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_suspend(%struct.mapped_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapped_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dm_table* null, %struct.dm_table** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 0
  %11 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %12 = call i32 @mutex_lock_nested(i32* %10, i32 %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %14 = call i64 @dm_suspended_md(%struct.mapped_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %57

19:                                               ; preds = %8
  %20 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %21 = call i64 @dm_suspended_internally_md(%struct.mapped_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %28 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %27, i32 0, i32 2
  %29 = load i32, i32* @DMF_SUSPENDED_INTERNALLY, align 4
  %30 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %31 = call i32 @wait_on_bit(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %23
  br label %8

37:                                               ; preds = %19
  %38 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %39 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %42 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %41, i32 0, i32 0
  %43 = call i32 @lockdep_is_held(i32* %42)
  %44 = call %struct.dm_table* @rcu_dereference_protected(i32 %40, i32 %43)
  store %struct.dm_table* %44, %struct.dm_table** %6, align 8
  %45 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %46 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = load i32, i32* @DMF_SUSPENDED, align 4
  %50 = call i32 @__dm_suspend(%struct.mapped_device* %45, %struct.dm_table* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %57

54:                                               ; preds = %37
  %55 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %56 = call i32 @dm_table_postsuspend_targets(%struct.dm_table* %55)
  br label %57

57:                                               ; preds = %54, %53, %16
  %58 = load %struct.mapped_device*, %struct.mapped_device** %4, align 8
  %59 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %34
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_internally_md(%struct.mapped_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local %struct.dm_table* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @__dm_suspend(%struct.mapped_device*, %struct.dm_table*, i32, i32, i32) #1

declare dso_local i32 @dm_table_postsuspend_targets(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
