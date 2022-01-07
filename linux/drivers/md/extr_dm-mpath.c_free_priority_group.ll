; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_free_priority_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_free_priority_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priority_group = type { i32, %struct.path_selector }
%struct.path_selector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.path_selector*)* }
%struct.dm_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priority_group*, %struct.dm_target*)* @free_priority_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_priority_group(%struct.priority_group* %0, %struct.dm_target* %1) #0 {
  %3 = alloca %struct.priority_group*, align 8
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.path_selector*, align 8
  store %struct.priority_group* %0, %struct.priority_group** %3, align 8
  store %struct.dm_target* %1, %struct.dm_target** %4, align 8
  %6 = load %struct.priority_group*, %struct.priority_group** %3, align 8
  %7 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %6, i32 0, i32 1
  store %struct.path_selector* %7, %struct.path_selector** %5, align 8
  %8 = load %struct.path_selector*, %struct.path_selector** %5, align 8
  %9 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.path_selector*, %struct.path_selector** %5, align 8
  %14 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.path_selector*)*, i32 (%struct.path_selector*)** %16, align 8
  %18 = load %struct.path_selector*, %struct.path_selector** %5, align 8
  %19 = call i32 %17(%struct.path_selector* %18)
  %20 = load %struct.path_selector*, %struct.path_selector** %5, align 8
  %21 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @dm_put_path_selector(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.priority_group*, %struct.priority_group** %3, align 8
  %26 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %25, i32 0, i32 0
  %27 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %28 = call i32 @free_pgpaths(i32* %26, %struct.dm_target* %27)
  %29 = load %struct.priority_group*, %struct.priority_group** %3, align 8
  %30 = call i32 @kfree(%struct.priority_group* %29)
  ret void
}

declare dso_local i32 @dm_put_path_selector(%struct.TYPE_2__*) #1

declare dso_local i32 @free_pgpaths(i32*, %struct.dm_target*) #1

declare dso_local i32 @kfree(%struct.priority_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
