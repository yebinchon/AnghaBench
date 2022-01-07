; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_dm_exception_table_lock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_dm_exception_table_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.dm_exception_table, %struct.dm_exception_table }
%struct.dm_exception_table = type { i32* }
%struct.dm_exception_table_lock = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, i32, %struct.dm_exception_table_lock*)* @dm_exception_table_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_exception_table_lock_init(%struct.dm_snapshot* %0, i32 %1, %struct.dm_exception_table_lock* %2) #0 {
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_exception_table_lock*, align 8
  %7 = alloca %struct.dm_exception_table*, align 8
  %8 = alloca %struct.dm_exception_table*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dm_exception_table_lock* %2, %struct.dm_exception_table_lock** %6, align 8
  %9 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %10 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %9, i32 0, i32 1
  store %struct.dm_exception_table* %10, %struct.dm_exception_table** %7, align 8
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 0
  store %struct.dm_exception_table* %12, %struct.dm_exception_table** %8, align 8
  %13 = load %struct.dm_exception_table*, %struct.dm_exception_table** %7, align 8
  %14 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.dm_exception_table*, %struct.dm_exception_table** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @exception_hash(%struct.dm_exception_table* %16, i32 %17)
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load %struct.dm_exception_table_lock*, %struct.dm_exception_table_lock** %6, align 8
  %21 = getelementptr inbounds %struct.dm_exception_table_lock, %struct.dm_exception_table_lock* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.dm_exception_table*, %struct.dm_exception_table** %8, align 8
  %23 = getelementptr inbounds %struct.dm_exception_table, %struct.dm_exception_table* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.dm_exception_table*, %struct.dm_exception_table** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @exception_hash(%struct.dm_exception_table* %25, i32 %26)
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load %struct.dm_exception_table_lock*, %struct.dm_exception_table_lock** %6, align 8
  %30 = getelementptr inbounds %struct.dm_exception_table_lock, %struct.dm_exception_table_lock* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  ret void
}

declare dso_local i64 @exception_hash(%struct.dm_exception_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
