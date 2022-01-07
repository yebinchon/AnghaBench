; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32 }
%struct.dm_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@DMF_SUSPENDED_INTERNALLY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DMF_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_resume(%struct.mapped_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_table* null, %struct.dm_table** %5, align 8
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 0
  %11 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %12 = call i32 @mutex_lock_nested(i32* %10, i32 %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %14 = call i32 @dm_suspended_md(%struct.mapped_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %62

17:                                               ; preds = %6
  %18 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %19 = call i64 @dm_suspended_internally_md(%struct.mapped_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %23 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %26 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %25, i32 0, i32 1
  %27 = load i32, i32* @DMF_SUSPENDED_INTERNALLY, align 4
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @wait_on_bit(i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %67

34:                                               ; preds = %21
  br label %6

35:                                               ; preds = %17
  %36 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %37 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %40 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %39, i32 0, i32 0
  %41 = call i32 @lockdep_is_held(i32* %40)
  %42 = call %struct.dm_table* @rcu_dereference_protected(i32 %38, i32 %41)
  store %struct.dm_table* %42, %struct.dm_table** %5, align 8
  %43 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %44 = icmp ne %struct.dm_table* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %47 = call i32 @dm_table_get_size(%struct.dm_table* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %35
  br label %62

50:                                               ; preds = %45
  %51 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %52 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %53 = call i32 @__dm_resume(%struct.mapped_device* %51, %struct.dm_table* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @DMF_SUSPENDED, align 4
  %59 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %60 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %59, i32 0, i32 1
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %56, %49, %16
  %63 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %64 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %32
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_internally_md(%struct.mapped_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local %struct.dm_table* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @dm_table_get_size(%struct.dm_table*) #1

declare dso_local i32 @__dm_resume(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
