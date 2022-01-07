; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_suspend_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_suspend_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.TYPE_4__*, %struct.dm_target* }
%struct.TYPE_4__ = type { i32 }
%struct.dm_target = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_table*, i32)* @suspend_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suspend_targets(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %8 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %11 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %10, i32 0, i32 2
  %12 = load %struct.dm_target*, %struct.dm_target** %11, align 8
  store %struct.dm_target* %12, %struct.dm_target** %6, align 8
  %13 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %14 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  br label %18

18:                                               ; preds = %72, %2
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %72 [
    i32 129, label %24
    i32 128, label %40
    i32 130, label %56
  ]

24:                                               ; preds = %22
  %25 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %26 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %28, align 8
  %30 = icmp ne i32 (%struct.dm_target*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %35, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %38 = call i32 %36(%struct.dm_target* %37)
  br label %39

39:                                               ; preds = %31, %24
  br label %72

40:                                               ; preds = %22
  %41 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %42 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %44, align 8
  %46 = icmp ne i32 (%struct.dm_target*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %49 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %51, align 8
  %53 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %54 = call i32 %52(%struct.dm_target* %53)
  br label %55

55:                                               ; preds = %47, %40
  br label %72

56:                                               ; preds = %22
  %57 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %58 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %60, align 8
  %62 = icmp ne i32 (%struct.dm_target*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %65 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %67, align 8
  %69 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %70 = call i32 %68(%struct.dm_target* %69)
  br label %71

71:                                               ; preds = %63, %56
  br label %72

72:                                               ; preds = %22, %71, %55, %39
  %73 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %74 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %73, i32 1
  store %struct.dm_target* %74, %struct.dm_target** %6, align 8
  br label %18

75:                                               ; preds = %18
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
