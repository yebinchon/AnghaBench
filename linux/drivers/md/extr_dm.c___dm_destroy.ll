; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32 }
%struct.dm_table = type { i32 }

@_minor_lock = common dso_local global i32 0, align 4
@_minor_idr = common dso_local global i32 0, align 4
@MINOR_ALLOCED = common dso_local global i32 0, align 4
@DMF_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: Forcibly removing mapped_device still in use! (%d users)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, i32)* @__dm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dm_destroy(%struct.mapped_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = call i32 @spin_lock(i32* @_minor_lock)
  %9 = load i32, i32* @MINOR_ALLOCED, align 4
  %10 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %11 = call i32 @dm_disk(%struct.mapped_device* %10)
  %12 = call i32 @disk_devt(i32 %11)
  %13 = call i32 @MINOR(i32 %12)
  %14 = call i32 @idr_replace(i32* @_minor_idr, i32 %9, i32 %13)
  %15 = load i32, i32* @DMF_FREEING, align 4
  %16 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 3
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = call i32 @spin_unlock(i32* @_minor_lock)
  %20 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %21 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @blk_set_queue_dying(i32 %22)
  %24 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %25 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %28 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %27, i32* %6)
  store %struct.dm_table* %28, %struct.dm_table** %5, align 8
  %29 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %30 = call i32 @dm_suspended_md(%struct.mapped_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %34 = call i32 @dm_table_presuspend_targets(%struct.dm_table* %33)
  %35 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %36 = call i32 @dm_table_postsuspend_targets(%struct.dm_table* %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dm_put_live_table(%struct.mapped_device* %38, i32 %39)
  %41 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %42 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %52, %46
  %48 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %49 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %48, i32 0, i32 0
  %50 = call i64 @atomic_read(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @msleep(i32 1)
  br label %47

54:                                               ; preds = %47
  br label %68

55:                                               ; preds = %37
  %56 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %57 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %56, i32 0, i32 0
  %58 = call i64 @atomic_read(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %62 = call i32 @dm_device_name(%struct.mapped_device* %61)
  %63 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %64 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %63, i32 0, i32 0
  %65 = call i64 @atomic_read(i32* %64)
  %66 = call i32 @DMWARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %70 = call i32 @dm_sysfs_exit(%struct.mapped_device* %69)
  %71 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %72 = call i32 @__unbind(%struct.mapped_device* %71)
  %73 = call i32 @dm_table_destroy(i32 %72)
  %74 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %75 = call i32 @free_dev(%struct.mapped_device* %74)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_replace(i32*, i32, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @blk_set_queue_dying(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*, i32*) #1

declare dso_local i32 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_presuspend_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_table_postsuspend_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_put_live_table(%struct.mapped_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DMWARN(i8*, i32, i64) #1

declare dso_local i32 @dm_device_name(%struct.mapped_device*) #1

declare dso_local i32 @dm_sysfs_exit(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_destroy(i32) #1

declare dso_local i32 @__unbind(%struct.mapped_device*) #1

declare dso_local i32 @free_dev(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
