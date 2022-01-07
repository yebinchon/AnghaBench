; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c___hash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c___hash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.hash_cell = type { i32, %struct.dm_table*, i32, i32 }

@dm_hash_cells_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_table* (%struct.hash_cell*)* @__hash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_table* @__hash_remove(%struct.hash_cell* %0) #0 {
  %2 = alloca %struct.hash_cell*, align 8
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  store %struct.hash_cell* %0, %struct.hash_cell** %2, align 8
  %5 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %6 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %5, i32 0, i32 3
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %9 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %8, i32 0, i32 2
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @mutex_lock(i32* @dm_hash_cells_mutex)
  %12 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %13 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dm_set_mdptr(i32 %14, i32* null)
  %16 = call i32 @mutex_unlock(i32* @dm_hash_cells_mutex)
  %17 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %18 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.dm_table* @dm_get_live_table(i32 %19, i32* %4)
  store %struct.dm_table* %20, %struct.dm_table** %3, align 8
  %21 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %22 = icmp ne %struct.dm_table* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %25 = call i32 @dm_table_event(%struct.dm_table* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %28 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dm_put_live_table(i32 %29, i32 %30)
  store %struct.dm_table* null, %struct.dm_table** %3, align 8
  %32 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %33 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %32, i32 0, i32 1
  %34 = load %struct.dm_table*, %struct.dm_table** %33, align 8
  %35 = icmp ne %struct.dm_table* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %38 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %37, i32 0, i32 1
  %39 = load %struct.dm_table*, %struct.dm_table** %38, align 8
  store %struct.dm_table* %39, %struct.dm_table** %3, align 8
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %42 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dm_put(i32 %43)
  %45 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  %46 = call i32 @free_cell(%struct.hash_cell* %45)
  %47 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  ret %struct.dm_table* %47
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_set_mdptr(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(i32, i32*) #1

declare dso_local i32 @dm_table_event(%struct.dm_table*) #1

declare dso_local i32 @dm_put_live_table(i32, i32) #1

declare dso_local i32 @dm_put(i32) #1

declare dso_local i32 @free_cell(%struct.hash_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
