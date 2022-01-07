; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_table_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_table_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32 }
%struct.hash_cell = type { %struct.mapped_device*, %struct.dm_table* }
%struct.mapped_device = type { i32 }
%struct.dm_table = type { i32 }

@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"device doesn't appear to be in the dev hash table.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @table_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_clear(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hash_cell*, align 8
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.dm_table*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.dm_table* null, %struct.dm_table** %10, align 8
  %11 = call i32 @down_write(i32* @_hash_lock)
  %12 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %13 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %12)
  store %struct.hash_cell* %13, %struct.hash_cell** %8, align 8
  %14 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %15 = icmp ne %struct.hash_cell* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = call i32 @DMDEBUG_LIMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @up_write(i32* @_hash_lock)
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %23 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %22, i32 0, i32 1
  %24 = load %struct.dm_table*, %struct.dm_table** %23, align 8
  %25 = icmp ne %struct.dm_table* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %28 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %27, i32 0, i32 1
  %29 = load %struct.dm_table*, %struct.dm_table** %28, align 8
  store %struct.dm_table* %29, %struct.dm_table** %10, align 8
  %30 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %31 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %30, i32 0, i32 1
  store %struct.dm_table* null, %struct.dm_table** %31, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %36 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %40 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %39, i32 0, i32 0
  %41 = load %struct.mapped_device*, %struct.mapped_device** %40, align 8
  %42 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %43 = call i32 @__dev_status(%struct.mapped_device* %41, %struct.dm_ioctl* %42)
  %44 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %45 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %44, i32 0, i32 0
  %46 = load %struct.mapped_device*, %struct.mapped_device** %45, align 8
  store %struct.mapped_device* %46, %struct.mapped_device** %9, align 8
  %47 = call i32 @up_write(i32* @_hash_lock)
  %48 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %49 = icmp ne %struct.dm_table* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %52 = call i32 @dm_sync_table(%struct.mapped_device* %51)
  %53 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %54 = call i32 @dm_table_destroy(%struct.dm_table* %53)
  br label %55

55:                                               ; preds = %50, %32
  %56 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %57 = call i32 @dm_put(%struct.mapped_device* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @dm_sync_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_destroy(%struct.dm_table*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
