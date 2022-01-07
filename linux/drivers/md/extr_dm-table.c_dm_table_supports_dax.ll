; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_supports_dax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_supports_dax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, i32, i32*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_table_supports_dax(%struct.dm_table* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %13 = call i32 @dm_table_get_num_targets(%struct.dm_table* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %16, i32 %17)
  store %struct.dm_target* %18, %struct.dm_target** %8, align 8
  %19 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %50

26:                                               ; preds = %15
  %27 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dm_target*, i32, i32*)*, i32 (%struct.dm_target*, i32, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.dm_target*, i32, i32*)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %35 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dm_target*, i32, i32*)*, i32 (%struct.dm_target*, i32, i32*)** %37, align 8
  %39 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 %38(%struct.dm_target* %39, i32 %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33, %26
  store i32 0, i32* %4, align 4
  br label %50

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %10

49:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %44, %25
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
