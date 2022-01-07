; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_alloc_gid_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_alloc_gid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_table_entry = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ib_gid_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@free_gid_work = common dso_local global i32 0, align 4
@GID_TABLE_ENTRY_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_gid_table_entry* (%struct.ib_gid_attr*)* @alloc_gid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_gid_table_entry* @alloc_gid_entry(%struct.ib_gid_attr* %0) #0 {
  %2 = alloca %struct.ib_gid_table_entry*, align 8
  %3 = alloca %struct.ib_gid_attr*, align 8
  %4 = alloca %struct.ib_gid_table_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 24, i32 %6)
  %8 = bitcast i8* %7 to %struct.ib_gid_table_entry*
  store %struct.ib_gid_table_entry* %8, %struct.ib_gid_table_entry** %4, align 8
  %9 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %10 = icmp ne %struct.ib_gid_table_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.ib_gid_table_entry* null, %struct.ib_gid_table_entry** %2, align 8
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %3, align 8
  %14 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net_device* @rcu_dereference_protected(i32 %15, i32 1)
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 8, i32 %20)
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  %23 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %24 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %23, i32 0, i32 4
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %26 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %31 = call i32 @kfree(%struct.ib_gid_table_entry* %30)
  store %struct.ib_gid_table_entry* null, %struct.ib_gid_table_entry** %2, align 8
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @dev_hold(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %37 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.net_device* %35, %struct.net_device** %39, align 8
  br label %40

40:                                               ; preds = %32, %12
  %41 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %42 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %41, i32 0, i32 3
  %43 = call i32 @kref_init(i32* %42)
  %44 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %45 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %44, i32 0, i32 2
  %46 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %3, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.ib_gid_attr* %46, i32 4)
  %48 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %49 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %48, i32 0, i32 1
  %50 = load i32, i32* @free_gid_work, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load i32, i32* @GID_TABLE_ENTRY_INVALID, align 4
  %53 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  %54 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %4, align 8
  store %struct.ib_gid_table_entry* %55, %struct.ib_gid_table_entry** %2, align 8
  br label %56

56:                                               ; preds = %40, %29, %11
  %57 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %2, align 8
  ret %struct.ib_gid_table_entry* %57
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.net_device* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_gid_table_entry*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.ib_gid_attr*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
