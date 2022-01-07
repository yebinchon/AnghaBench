; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_choose_path_in_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_choose_path_in_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { i32 }
%struct.multipath = type { i32, %struct.pgpath*, i32 }
%struct.priority_group = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dm_path* (%struct.TYPE_4__*, i64)* }
%struct.dm_path = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgpath* (%struct.multipath*, %struct.priority_group*, i64)* @choose_path_in_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgpath* @choose_path_in_pg(%struct.multipath* %0, %struct.priority_group* %1, i64 %2) #0 {
  %4 = alloca %struct.pgpath*, align 8
  %5 = alloca %struct.multipath*, align 8
  %6 = alloca %struct.priority_group*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dm_path*, align 8
  %10 = alloca %struct.pgpath*, align 8
  store %struct.multipath* %0, %struct.multipath** %5, align 8
  store %struct.priority_group* %1, %struct.priority_group** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %12 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.dm_path* (%struct.TYPE_4__*, i64)*, %struct.dm_path* (%struct.TYPE_4__*, i64)** %15, align 8
  %17 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %18 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.dm_path* %16(%struct.TYPE_4__* %18, i64 %19)
  store %struct.dm_path* %20, %struct.dm_path** %9, align 8
  %21 = load %struct.dm_path*, %struct.dm_path** %9, align 8
  %22 = icmp ne %struct.dm_path* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.pgpath* @ERR_PTR(i32 %25)
  store %struct.pgpath* %26, %struct.pgpath** %4, align 8
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.dm_path*, %struct.dm_path** %9, align 8
  %29 = call %struct.pgpath* @path_to_pgpath(%struct.dm_path* %28)
  store %struct.pgpath* %29, %struct.pgpath** %10, align 8
  %30 = load %struct.multipath*, %struct.multipath** %5, align 8
  %31 = getelementptr inbounds %struct.multipath, %struct.multipath* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.priority_group* @READ_ONCE(i32 %32)
  %34 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %35 = icmp ne %struct.priority_group* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %27
  %40 = load %struct.multipath*, %struct.multipath** %5, align 8
  %41 = getelementptr inbounds %struct.multipath, %struct.multipath* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  %45 = load %struct.multipath*, %struct.multipath** %5, align 8
  %46 = getelementptr inbounds %struct.multipath, %struct.multipath* %45, i32 0, i32 1
  store %struct.pgpath* %44, %struct.pgpath** %46, align 8
  %47 = load %struct.multipath*, %struct.multipath** %5, align 8
  %48 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %49 = call i32 @__switch_pg(%struct.multipath* %47, %struct.priority_group* %48)
  %50 = load %struct.multipath*, %struct.multipath** %5, align 8
  %51 = getelementptr inbounds %struct.multipath, %struct.multipath* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %39, %27
  %55 = load %struct.pgpath*, %struct.pgpath** %10, align 8
  store %struct.pgpath* %55, %struct.pgpath** %4, align 8
  br label %56

56:                                               ; preds = %54, %23
  %57 = load %struct.pgpath*, %struct.pgpath** %4, align 8
  ret %struct.pgpath* %57
}

declare dso_local %struct.pgpath* @ERR_PTR(i32) #1

declare dso_local %struct.pgpath* @path_to_pgpath(%struct.dm_path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.priority_group* @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__switch_pg(%struct.multipath*, %struct.priority_group*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
