; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_get_immutable_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_get_immutable_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_table = type { i32, %struct.dm_target* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_target* @dm_table_get_immutable_target(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_table*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  %4 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %5 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %10 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %9, i32 0, i32 1
  %11 = load %struct.dm_target*, %struct.dm_target** %10, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i64 0
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dm_target_is_immutable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8, %1
  store %struct.dm_target* null, %struct.dm_target** %2, align 8
  br label %22

18:                                               ; preds = %8
  %19 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %20 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %19, i32 0, i32 1
  %21 = load %struct.dm_target*, %struct.dm_target** %20, align 8
  store %struct.dm_target* %21, %struct.dm_target** %2, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  ret %struct.dm_target* %23
}

declare dso_local i32 @dm_target_is_immutable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
