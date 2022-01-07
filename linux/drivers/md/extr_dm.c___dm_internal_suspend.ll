; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_internal_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_internal_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32 }
%struct.dm_table = type { i32 }

@DMF_SUSPENDED_INTERNALLY = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, i32)* @__dm_internal_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dm_internal_suspend(%struct.mapped_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.dm_table* null, %struct.dm_table** %5, align 8
  %6 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %7 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %17 = call i64 @dm_suspended_md(%struct.mapped_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @DMF_SUSPENDED_INTERNALLY, align 4
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 2
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  br label %40

24:                                               ; preds = %15
  %25 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %26 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %29 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %28, i32 0, i32 0
  %30 = call i32 @lockdep_is_held(i32* %29)
  %31 = call %struct.dm_table* @rcu_dereference_protected(i32 %27, i32 %30)
  store %struct.dm_table* %31, %struct.dm_table** %5, align 8
  %32 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %33 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %36 = load i32, i32* @DMF_SUSPENDED_INTERNALLY, align 4
  %37 = call i32 @__dm_suspend(%struct.mapped_device* %32, %struct.dm_table* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %39 = call i32 @dm_table_postsuspend_targets(%struct.dm_table* %38)
  br label %40

40:                                               ; preds = %24, %19, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

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
