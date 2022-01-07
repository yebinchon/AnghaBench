; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_get_wildcard_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_get_wildcard_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_target* @dm_table_get_wildcard_target(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %9 = call i32 @dm_table_get_num_targets(%struct.dm_table* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %12, i32 %13)
  store %struct.dm_target* %14, %struct.dm_target** %4, align 8
  %15 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @dm_target_is_wildcard(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  store %struct.dm_target* %21, %struct.dm_target** %2, align 8
  br label %27

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  store %struct.dm_target* null, %struct.dm_target** %2, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  ret %struct.dm_target* %28
}

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

declare dso_local i64 @dm_target_is_wildcard(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
