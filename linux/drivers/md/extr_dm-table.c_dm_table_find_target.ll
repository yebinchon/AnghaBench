; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_find_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_find_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.dm_table = type { i32, %struct.dm_target* }

@KEYS_PER_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_target* @dm_table_find_target(%struct.dm_table* %0, i64 %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %12 = call i64 @dm_table_get_size(%struct.dm_table* %11)
  %13 = icmp sge i64 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.dm_target* null, %struct.dm_target** %3, align 8
  br label %65

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %22 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @get_child(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64* @get_node(%struct.dm_table* %29, i32 %30, i32 %31)
  store i64* %32, i64** %9, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %47, %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @KEYS_PER_NODE, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64*, i64** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %33

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %56 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %55, i32 0, i32 1
  %57 = load %struct.dm_target*, %struct.dm_target** %56, align 8
  %58 = load i32, i32* @KEYS_PER_NODE, align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %57, i64 %63
  store %struct.dm_target* %64, %struct.dm_target** %3, align 8
  br label %65

65:                                               ; preds = %54, %17
  %66 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  ret %struct.dm_target* %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dm_table_get_size(%struct.dm_table*) #1

declare dso_local i32 @get_child(i32, i32) #1

declare dso_local i64* @get_node(%struct.dm_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
