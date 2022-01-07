; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32, i32, i32, i32, i32, %struct.dm_target*, i32* }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_table_destroy(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %2, align 8
  %5 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %6 = icmp ne %struct.dm_table* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %78

8:                                                ; preds = %1
  %9 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %10 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %15 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %18 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vfree(i32 %23)
  br label %25

25:                                               ; preds = %13, %8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %29 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %34 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %33, i32 0, i32 6
  %35 = load %struct.dm_target*, %struct.dm_target** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %35, i64 %37
  store %struct.dm_target* %38, %struct.dm_target** %4, align 8
  %39 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %40 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %42, align 8
  %44 = icmp ne i32 (%struct.dm_target*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %47 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %49, align 8
  %51 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %52 = call i32 %50(%struct.dm_target* %51)
  br label %53

53:                                               ; preds = %45, %32
  %54 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %55 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @dm_put_target_type(%struct.TYPE_2__* %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %63 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @vfree(i32 %64)
  %66 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %67 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %66, i32 0, i32 4
  %68 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %69 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @free_devices(i32* %67, i32 %70)
  %72 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %73 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dm_free_md_mempools(i32 %74)
  %76 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %77 = call i32 @kfree(%struct.dm_table* %76)
  br label %78

78:                                               ; preds = %61, %7
  ret void
}

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dm_put_target_type(%struct.TYPE_2__*) #1

declare dso_local i32 @free_devices(i32*, i32) #1

declare dso_local i32 @dm_free_md_mempools(i32) #1

declare dso_local i32 @kfree(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
