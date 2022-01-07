; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32, i32 }
%struct.hash_cell = type { i32, %struct.mapped_device* }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"device doesn't appear to be in the dev hash table.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DM_DEFERRED_REMOVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to remove open device %s\00", align 1
@KOBJ_REMOVE = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_remove(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hash_cell*, align 8
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_table*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i32 @down_write(i32* @_hash_lock)
  %13 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %14 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %13)
  store %struct.hash_cell* %14, %struct.hash_cell** %8, align 8
  %15 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %16 = icmp ne %struct.hash_cell* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @DMDEBUG_LIMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @up_write(i32* @_hash_lock)
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %24 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %23, i32 0, i32 1
  %25 = load %struct.mapped_device*, %struct.mapped_device** %24, align 8
  store %struct.mapped_device* %25, %struct.mapped_device** %9, align 8
  %26 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %27 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %28 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DM_DEFERRED_REMOVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @dm_lock_for_deletion(%struct.mapped_device* %26, i32 %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %22
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %46 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DM_DEFERRED_REMOVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = call i32 @up_write(i32* @_hash_lock)
  %53 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %54 = call i32 @dm_put(%struct.mapped_device* %53)
  store i32 0, i32* %4, align 4
  br label %100

55:                                               ; preds = %44, %39
  %56 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %57 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @DMDEBUG_LIMIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @up_write(i32* @_hash_lock)
  %61 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %62 = call i32 @dm_put(%struct.mapped_device* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %100

64:                                               ; preds = %22
  %65 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %66 = call %struct.dm_table* @__hash_remove(%struct.hash_cell* %65)
  store %struct.dm_table* %66, %struct.dm_table** %11, align 8
  %67 = call i32 @up_write(i32* @_hash_lock)
  %68 = load %struct.dm_table*, %struct.dm_table** %11, align 8
  %69 = icmp ne %struct.dm_table* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %72 = call i32 @dm_sync_table(%struct.mapped_device* %71)
  %73 = load %struct.dm_table*, %struct.dm_table** %11, align 8
  %74 = call i32 @dm_table_destroy(%struct.dm_table* %73)
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* @DM_DEFERRED_REMOVE, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %79 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %83 = load i32, i32* @KOBJ_REMOVE, align 4
  %84 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %85 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dm_kobject_uevent(%struct.mapped_device* %82, i32 %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %91 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %92 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %75
  %96 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %97 = call i32 @dm_put(%struct.mapped_device* %96)
  %98 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %99 = call i32 @dm_destroy(%struct.mapped_device* %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %55, %51, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*, ...) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @dm_lock_for_deletion(%struct.mapped_device*, i32, i32) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @__hash_remove(%struct.hash_cell*) #1

declare dso_local i32 @dm_sync_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_destroy(%struct.dm_table*) #1

declare dso_local i32 @dm_kobject_uevent(%struct.mapped_device*, i32, i32) #1

declare dso_local i32 @dm_destroy(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
