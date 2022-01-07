; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dm_hash_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dm_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.hash_cell = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@_hash_lock = common dso_local global i32 0, align 4
@_name_buckets = common dso_local global i64 0, align 8
@_uuid_buckets = common dso_local global i64 0, align 8
@dm_hash_cells_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.mapped_device*)* @dm_hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_hash_insert(i8* %0, i8* %1, %struct.mapped_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.hash_cell*, align 8
  %9 = alloca %struct.hash_cell*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mapped_device* %2, %struct.mapped_device** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %13 = call %struct.hash_cell* @alloc_cell(i8* %10, i8* %11, %struct.mapped_device* %12)
  store %struct.hash_cell* %13, %struct.hash_cell** %8, align 8
  %14 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %15 = icmp ne %struct.hash_cell* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = call i32 @down_write(i32* @_hash_lock)
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.hash_cell* @__get_name_cell(i8* %21)
  store %struct.hash_cell* %22, %struct.hash_cell** %9, align 8
  %23 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %24 = icmp ne %struct.hash_cell* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %27 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dm_put(i32 %28)
  br label %70

30:                                               ; preds = %19
  %31 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %32 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %31, i32 0, i32 2
  %33 = load i64, i64* @_name_buckets, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @hash_str(i8* %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @list_add(i32* %32, i64 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %30
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.hash_cell* @__get_uuid_cell(i8* %41)
  store %struct.hash_cell* %42, %struct.hash_cell** %9, align 8
  %43 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %44 = icmp ne %struct.hash_cell* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %47 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %46, i32 0, i32 2
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.hash_cell*, %struct.hash_cell** %9, align 8
  %50 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dm_put(i32 %51)
  br label %70

53:                                               ; preds = %40
  %54 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %55 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %54, i32 0, i32 0
  %56 = load i64, i64* @_uuid_buckets, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @hash_str(i8* %57)
  %59 = add nsw i64 %56, %58
  %60 = call i32 @list_add(i32* %55, i64 %59)
  br label %61

61:                                               ; preds = %53, %30
  %62 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %63 = call i32 @dm_get(%struct.mapped_device* %62)
  %64 = call i32 @mutex_lock(i32* @dm_hash_cells_mutex)
  %65 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %66 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %67 = call i32 @dm_set_mdptr(%struct.mapped_device* %65, %struct.hash_cell* %66)
  %68 = call i32 @mutex_unlock(i32* @dm_hash_cells_mutex)
  %69 = call i32 @up_write(i32* @_hash_lock)
  store i32 0, i32* %4, align 4
  br label %76

70:                                               ; preds = %45, %25
  %71 = call i32 @up_write(i32* @_hash_lock)
  %72 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %73 = call i32 @free_cell(%struct.hash_cell* %72)
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %61, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.hash_cell* @alloc_cell(i8*, i8*, %struct.mapped_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__get_name_cell(i8*) #1

declare dso_local i32 @dm_put(i32) #1

declare dso_local i32 @list_add(i32*, i64) #1

declare dso_local i64 @hash_str(i8*) #1

declare dso_local %struct.hash_cell* @__get_uuid_cell(i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dm_get(%struct.mapped_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_set_mdptr(%struct.mapped_device*, %struct.hash_cell*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_cell(%struct.hash_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
